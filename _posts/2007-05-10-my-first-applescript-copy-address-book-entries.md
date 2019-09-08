---
id: 56
title: 'My first AppleScript: Copy Address Book entries'
date: '2007-05-10 13:25:39 +0000'
permalink: "/2007/05/10/my-first-applescript-copy-address-book-entries/"
layout: post
categories:
- Happy Hacking
tags:
- applescript
- address
- book
- mac
- ICQ
- jabber
comments:
- id: 2
  author: 'My first AppleScript: Copy Address Book entries | Lustauffotos.de'
  author_email: ''
  author_url: http://www.lustauffotos.com/2007/05/10/my-first-applescript-copy-address-book-entries/
  date: '2009-05-10 13:30:15 +0000'
  date_gmt: '2009-05-10 12:30:15 +0000'
  content: "[...] This article moved to my techblog RngTng.com: http://www.rngtng.com/2007/05/10/my-first-applescript-copy-address-book-entries/
    [...]"
---
Tatataa! I just wrote my frist AppleScript. For displaying the buddypicture of my Address Book contacts in [Adium](http://www.adiumx.com/), I had to copy the ICQ entry to a new Jabber enrty with appending "@jit.jabber.fsinf.de". The code follows:

    tell application "Address Book"
    set thePeople to every person whose ICQ handles is not {} and Jabber handles is {}
    repeat with eachPerson in thePeople
    set icqnr to value of ICQ handles of eachPerson
    set jabberid to (item 1 of icqnr) & "@jit.jabber.fsinf.de"
    make new Jabber handle at end of Jabber handles of eachPerson with properties {label:"Home", value:jabberid}
    end repeat
    save addressbook
    end tell

It worked out fine. Now I see you all in my buddylist ;-)