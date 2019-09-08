---
id: 677
title: Send Mac to sleep with external screen and closing the lid (Yosemite)
date: '2012-10-17 09:24:48 +0000'
permalink: "/2012/10/17/send-mac-to-sleep-with-external-screen-and-closing-the-lid/"
layout: post
categories:
- Happy Hacking
tags:
- mac
- lion
- sleep
- external
- screen
comments: []
---
![](https://pixabay.com/static/uploads/photo/2015/06/07/12/11/macro-800236_640.jpg)

I had the problem of my Mac not going into sleep when external screen is connected and closing the lid. Luckly I came [across this advice](https://discussions.apple.com/message/19264651#19264651) which indeed, did the trick:

1. Disable external Monitor  
2. Type `sudo nvram boot-args="iog=0x0"`  
3. and restart

Voilà!

**Update** : With Yosemite you need to type:

`sudo nvram boot-args="niog=1"`

Source: <https://discussions.apple.com/thread/6601019>