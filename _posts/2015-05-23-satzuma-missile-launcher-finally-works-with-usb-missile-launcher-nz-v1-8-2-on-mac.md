---
id: 834
title: Satzuma Missile Launcher finally works with USB Missile Launcher NZ v1.8.2
  on Mac
date: '2015-05-23 12:37:50 +0000'
permalink: "/2015/05/23/satzuma-missile-launcher-finally-works-with-usb-missile-launcher-nz-v1-8-2-on-mac/"
layout: post
categories:
- Happy Hacking
tags:
- mac
- USB Missile Launcher NZ
- yosemite
comments:
- id: 298208
  author: USB Missile Launcher and Satzuma Missile Launcher | David&#039;s Opinions
  author_email: ''
  author_url: https://dgwilson.wordpress.com/2015/06/01/usb-missile-launcher-and-satzuma-missile-launcher/
  date: '2015-06-01 00:07:50 +0000'
  date_gmt: '2015-05-31 23:07:50 +0000'
  content: "[&#8230;] Additional reference: http://www.rngtng.com/2015/05/23/satzuma-missile-launcher-finally-works-with-usb-missile-launcher-nz&#8230;
    [&#8230;]"
---
![img8077_14925](/files/2015/05/img8077_14925.jpg)

Good news: I finally got the&nbsp;Satzuma Missile Launcher working on my Mac Yosemite. Solution it the latest (unfortunately unreleased) version of **USB Missile Launcher NZ**. You can [download USB Missile Launcher NZ v1.8.2 from here](https://sites.google.com/site/dgwilson65/USBMissileLauncherNZV1.8.2.dmg?attredirects=0&d=1), a source I found after digging through the comments of version 1.8.1 announcement:

<https://dgwilson.wordpress.com/2012/01/11/usb-missile-launcher-nz-v1-8-1-release/#comment-10069>

To get started with Satzuma, install v1.8.2, restart you Mac (bummer), open `USB Missile Launcher NZ.app`, go to _Preferences -\> Launcher_ and  
enter `1046` for VendorId, `3777` for ProductId and change Controls to Satzuma (see screenshot) - Boom! You're all set - happy shooting!

![Screen Shot 2015-05-20 at 11.41.11](/files/2015/05/Screen-Shot-2015-05-20-at-11.41.11.png)

Next, I want to check <https://code.google.com/p/pymissile> - having a working CLI version would be so much better!