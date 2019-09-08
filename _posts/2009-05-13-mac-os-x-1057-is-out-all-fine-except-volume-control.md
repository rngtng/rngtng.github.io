---
id: 88
title: "[update] Mac Os X 10.5.7 is out - all fine except volume control"
date: '2009-05-13 21:59:44 +0000'
permalink: "/2009/05/13/mac-os-x-1057-is-out-all-fine-except-volume-control/"
layout: post
categories:
- Lost in Web
tags:
- mac
- os x
- terratec
- usb
- soundcard
- volume
- update
comments:
- id: 3
  author: sonderpop
  author_email: acezanne@googlemail.com
  author_url: ''
  date: '2009-05-15 20:38:03 +0000'
  date_gmt: '2009-05-15 19:38:03 +0000'
  content: "I have the same problem with my ESI U46SE. and started this topic on Apple's
    support forum, referencing you:\r\nhttp://discussions.apple.com/thread.jspa?threadID=2007559&amp;tstart=0"
- id: 4
  author: sonderpop
  author_email: acezanne@googlemail.com
  author_url: ''
  date: '2009-05-16 09:57:13 +0000'
  date_gmt: '2009-05-16 08:57:13 +0000'
  content: You can get your volume control back by downgrading the USB audio kernel
    extension to the previous version, see my discussion thread for details.
- id: 5
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2009-05-16 12:46:22 +0000'
  date_gmt: '2009-05-16 11:46:22 +0000'
  content: Hey thanks MAte! You saved my day!
- id: 6
  author: Ken Laji
  author_email: laji@mac.com
  author_url: ''
  date: '2009-05-27 20:45:45 +0000'
  date_gmt: '2009-05-27 19:45:45 +0000'
  content: "Hi,\r\n\r\nI am having similar problems with a Phillips USB Speechmike.
    Though I have Time Machine backup, it did not have a backup of the Extensions
    folder! Please could you email me that kext file? The Zippyshare link does not
    work. \r\n\r\nMany thanks.\r\n\r\nKen"
- id: 7
  author: Ken Laji
  author_email: laji@mac.com
  author_url: ''
  date: '2009-05-27 21:11:15 +0000'
  date_gmt: '2009-05-27 20:11:15 +0000'
  content: Ignore the last one - I managed from the Time Machine. Please let me know
    if you need this file, I can email it to you:-)
---
Yeah [Mac Os X 10.5.7](http://www.macworld.com/article/140568/2009/05/osx_update.html) just got released. All fine for me, except my external USB soundcard **Terratec Aureon 5.1** can't be volume controlled anymore - strange!? Any idea what's wrong?

[update - solved!]  
Apparently downgrading the USB Sound kernel back to 10.5.6 Version solves the issue. See the comments and the [Apple Discussion-board](http://discussions.apple.com/thread.jspa?messageID=9466757&#9466757) for more... Thx to _sonderpop_ for that hint!