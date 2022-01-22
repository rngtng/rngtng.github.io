---
layout: post
title: "SOLVED: use AWS-VAULT with gopass as backend"
tags: ["post"]
date: 2022-01-22 19:44:55 +0100
---

A very good tool to manage multiple AWS account, especially with SSO enabled is [AWS VAULT](https://github.com/99designs/aws-vault). Idea is that a session gets securely stored in a backend and (re-)used until it expires. 
One downside with he default macos keystore as backend is a manual password entry every time the session renews. This is not only annoying, reduces security but even aligns with my security setup. Luckily `pass` is supported as backend too. But for the but mature version `gopass`, the following setup has to be applied:

Given we have a gopass setup with two stores:

```
~/.password-store (default)
~/.password-store-awsvault (vault)
```

Then config would look like this

```
export AWS_VAULT_BACKEND=pass
export AWS_VAULT_PASS_CMD=gopass
export AWS_VAULT_PASS_PASSWORD_STORE_DIR=~/.password-store-awsvault
export AWS_VAULT_PASS_PREFIX=vault
```

This worked writing, but never reading. I didn't even see `aws-vault list` calling `gopass` at all. Looks like the missing vault folder is a problem and aws-vault does a direct directory inspection of `AWS_VAULT_PASS_PASSWORD_STORE_DIR`. Fix was to hardcode the `AWS_VAULT_PASS_PREFIX` into a customised script (see below) and to not set the variable. Strictly spoken vault is not a prefix but the name of the store, so it maked sense:

The dedicated `aws-vault-pass` script:

```bash
#!/usr/bin/env bash

ARGS=( "$@" )

 ## ensure password store has 'git config commit.gpgsign false'

if [ "${ARGS[0]}" == "insert" ]
then
    # echo "- INSERT ------ ${ARGS[@]} --------" 1>&2
    gopass ${ARGS[@]/sessions/aws-vault\/sessions}
elif [ "${ARGS[0]}" == "show" ]
then
    # echo "- SHOW --------------" 1>&2
    gopass show --password aws-vault/"${ARGS[1]}"
elif [ "${ARGS[0]}" == "rm" ]
then
    # echo "- RM --------------" 1>&2
    gopass ${ARGS[@]/sessions/aws-vault\/sessions}
fi
```

and ensure aws-vault pics it up:

```
export AWS_VAULT_PASS_CMD=aws-vault-pass
```

Voila!

Related isssue: https://github.com/99designs/aws-vault/issues/667

## Original issue and comments

https://github.com/rngtng/rngtng.github.io/issues/17
