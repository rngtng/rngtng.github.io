---
id: 677
title: Send Mac to sleep with external screen and closing the lid (Yosemite)
date: 2012-10-17T09:24:48+01:00
author: admin
layout: post
guid: http://www.rngtng.com/?p=677
permalink: /2012/10/17/send-mac-to-sleep-with-external-screen-and-closing-the-lid/
networkpub_postmessage:
  - ""
networkpub_twitterhandle:
  - ""
networkpub_twitterhash:
  - ""
networkpub_ogtype_facebook:
  - article
categories:
  - Happy Hacking
tags:
  - external
  - lion
  - mac
  - screen
  - sleep
---
<img class="aligncenter" src="https://pixabay.com/static/uploads/photo/2015/06/07/12/11/macro-800236_640.jpg" alt="" />

I had the problem of my Mac not going into sleep when external screen is connected and closing the lid. Luckly I came [across this advice](https://discussions.apple.com/message/19264651#19264651) which indeed, did the trick:

1. Disable external Monitor  
2. Type \`sudo nvram boot-args=&#8221;iog=0x0&#8243;\`  
3. and restart

Voilà!

**Update**: With Yosemite you need to type:

\`sudo nvram boot-args=&#8221;niog=1&#8243;\`

Source: <https://discussions.apple.com/thread/6601019>