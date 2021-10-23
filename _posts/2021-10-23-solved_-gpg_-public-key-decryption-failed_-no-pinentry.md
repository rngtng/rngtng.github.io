---
layout: post
title: "SOLVED: gpg: public key decryption failed: No pinentry"
tags: ["post"]
date: 2021-10-23 22:47:18 +0200
---

I recently updated to latest gnupg and pinentry version via homebrew, which unfortunately broke my setup. I suddenly got this error when decrypting with gpg:

```
...
gpg: public key decryption failed: No pinentry
gpg: decryption failed: No pinentry
...
```

Looking into `~/.gnupg/gpg-agent.conf` this first line showed:

```
pinentry-program /usr/local/bin/pinentry-mac
```

This is right and the same what `which pinentry-mac` returns. So why the error? I turns out ` /usr/local/bin/pinentry-mac` is a symbol link which (apparently?) the gpg-agent doesn't follow. So trick was to set the final path, for me that's:

```
pinentry-program /usr/local/Cellar/pinentry-mac/1.1.1.1/bin/pinentry-mac
```

And, BOOM! It works again.


Further sources:
* https://superuser.com/questions/1628782/gpg-signing-failed-no-pinentry

## Original issue and comments

https://github.com/rngtng/rngtng.github.io/issues/16
