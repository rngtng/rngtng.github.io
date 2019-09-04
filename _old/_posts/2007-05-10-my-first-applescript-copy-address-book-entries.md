---
id: 56
title: 'My first AppleScript: Copy Address Book entries'
date: 2007-05-10T13:25:39+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=56
permalink: /2007/05/10/my-first-applescript-copy-address-book-entries/
syntaxhighlighter_encoded:
  - "1"
categories:
  - Happy Hacking
tags:
  - address
  - applescript
  - book
  - ICQ
  - jabber
  - mac
---
Tatataa! I just wrote my frist AppleScript. For displaying the buddypicture of my Address Book contacts in <a href="http://www.adiumx.com/" target="_blank">Adium</a>, I had to copy the ICQ entry to a new Jabber enrty with appending &#8220;@jit.jabber.fsinf.de&#8221;. The code follows:

[bash]  
tell application "Address Book"  
set thePeople to every person whose ICQ handles is not {} and Jabber handles is {}  
repeat with eachPerson in thePeople  
set icqnr to value of ICQ handles of eachPerson  
set jabberid to (item 1 of icqnr) & "@jit.jabber.fsinf.de"  
make new Jabber handle at end of Jabber handles of eachPerson with properties {label:"Home", value:jabberid}  
end repeat  
save addressbook  
end tell  
[/bash]

It worked out fine. Now I see you all in my buddylist 😉