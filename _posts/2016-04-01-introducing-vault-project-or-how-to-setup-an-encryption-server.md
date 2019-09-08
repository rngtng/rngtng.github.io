---
id: 849
title: 'Introducing: Vault Project or How to setup an Encryption Server'
date: '2016-04-01 07:36:51 +0000'
permalink: "/2016/04/01/introducing-vault-project-or-how-to-setup-an-encryption-server/"
layout: post
categories:
- Happy Hacking
tags:
- howto
- setup
- vault
- security
- git
- credentials
- secret data
comments: []
---
![](http://www.rngtng.com/files/2015/08/Screen-Shot-2015-08-07-at-16.08.24.png)

Let's talk about credentials. Credentials! Who doesn't work without any secret data which should never go public? Sure, sure, we'd never share those secrets public, but then there's git, and github and.. BAAMM.. credentials exposed. Upps!

To avoid this, it's common sense to **NOT** checkin any credentials. NEVER. EVER. We make use of `.gitignore`, cfg templates and placeholders. But nevertheless it's a hassle, especially when working in a team, where a credential exchange is sometimes required. In past, I preferred the solution where an encryption server in a save environment took care about encrypting/decrypting data. Once the data is encrypted, it's save to checkin, store and share in the same way like any other data. Only users (or systems) with access rights for the encryption server can decrypt the data. Instant WIN! But how to setup such a server?

## Introducing: Vault Project

I recently came across the [Vault Project](https://vaultproject.io) which exactly meet all my needs. In addition, it's open source, simple to use and comes with very good documentation and tutorials. Nevertheless, I couldn't find all the steps required to setup an encryption server in one place, so here they are:

### How to setup an Encryption server with Vault

First, setup a new vault server on a remote machine by following those steps:

- 
  1. Create a config file [docs](https://vaultproject.io/docs/config)

`touch vault.cfg`

For our case we just need a simple file backend and expose the vault via tcp

    backend "file" {
      path = "/Users//.vaultstore"
    }
    
    
    listener "tcp" {
      address = "127.0.0.1:8200"
      tls_disable = 1
    }

See the [vault config docs](https://vaultproject.io/docs/config) for other options.

- 
  1. Now start the server ...

`vault server -config vault.cfg`

- 
  1. ... and run the init procedure: [docs](https://vaultproject.io/docs)

`vault init -address=http://127.0.0.1:8200`

This will output five keys and a root token. Make sure to keep those keys save, once lost you wouldn't be able to unseal your vault, and therefore gain access. The root token is needed to authenticate against the server. To remove the need of passing in the host address all the time, you can set the value with VAULT_ADDR too: `export VAULT_ADDR=http://127.0.0.1:8200`

- 
  1. Unseal vault [docs](https://vaultproject.io/docs/concepts/seal.html)

On start, the vault is sealed, and can only be opened with the keys generated at the very beginning. Unseal is done with:

`vault unseal`

Execute this three times, and enter a different key each time.

DONE! Now the server is up and running and you can connect from you local machine to the vault.

- 
  1. Authenticate with the server

The vault only accepts authenticated connections, for that create a auth token with:

`vault auth`

Enter the root token-key obtained from step 1. Later, I'd strongly recommend to use a non-root token.

- 
  1. Enable github auth backend [docs](https://vaultproject.io/docs/auth/github.html)

In order to allow other people access to the vault and decrypt data, it's the easiest to enable github authentication. In this case, every user part to a specific github team is able to obtain an auth-token themselves.

Enable github auth:

`vault auth-enable github`

Register github org:  
`vault write auth/github/config organization=`

...and a team:  
`vault write auth/github/map/teams/ value=root`

Now, any team member can get access to the vault with a [github token](https://github.com/settings/tokens):  
`vault auth -method=github token=`

Whereas `` only requires the 'read:org' scope to be granted. Once auth is complete the actual vault token will be stored in `~/.vault-token` and allows the user to connect to the vault.

- 

7.Enable transit backend [docs](https://vaultproject.io/docs/secrets/transit)

Per default, vault stores data associated with a key. But for our case, we want to encrypt data on the fly and manage storage within our SCM instead. Encryption only is enabled with the 'tranist backend':

`vault mount transit`

Add a key name to generate an encryption key:

`vault write -f transit/keys/`

The actual encryption key can be retrieved via:  
`vault read --format=json transit/raw/`

DONE! Now the encryption server is ready to encrypt. For this I used json as response format and [jq](http://stedolan.github.io/jq/) to extract the data.

- 1.Encrypt:

    echo -n "" | base64 | vault write --format=json transit/encrypt/ plaintext=- | jq -r .data.ciphertext

- 2.Decrypt:

    vault write --format=json transit/decrypt/ ciphertext= | jq -r .data.plaintext | base64 -D

Finally, let's create some bash functions to make life easy:

    export VAULT_ADDR=""
    export VAULT_KEY=""
    
    function _encrypt {
      base64 | vault write --format=json transit/encrypt/$VAULT_KEY plaintext=- | jq -r .data.ciphertext
    }
    
    function _decrypt {
      vault write --format=json transit/decrypt/$VAULT_KEY ciphertext=- | jq -r .data.plaintext | base64 -D
    }
    
    # encrypt data.
    # Usage: encryptd ""
    function encryptd {
      echo $1 | _encrypt
    }
    
    # decrypt data.
    # Usage: decryptd 
    function decryptd {
      echo -n $1 | _decrypt
    }
    
    # encrypt file. will overwrite existing ones! 
    # Usage: encryptf 
    function encryptf {
      cat $1 | _encrypt > $1.enc
    }
    
    # decrypt file. will overwrite existing ones! 
    # Usage: decryptf 
    function decryptf {
      cat $1 | _decrypt > `basename -s .enc $1`
    }
    
    # decrypt file and open for edit. on close encrypt changes.
    # Usage: editcrypt 
    function editcrypt {
      cat $1 | _decrypt > $1.tmp && $EDITOR $1.tmp && cat $1.tmp | _encrypt > $1 && rm $1.tmp
    }

Sweeeeeett!

On thing to mention is adding the non-encrypted files to you `.gitignore`. This ensures the file wont end up in your repo by accident:

    $ cat .gitignore
    # only checkin the encrypted version
    /database.yml
    /!database.yml.enc

I hope this helped setting up your own vault server. These are just the first rough steps. Vault allows way more, like very granular access management, various auth and storage backends etc. Again, I strongly recommend to check their docs <https://vaultproject.io/docs> and follow the interactive tutorial <https://vaultproject.io/#/demo/0.c>

Keep your data save!

[proofread by Daniel - thanks!]