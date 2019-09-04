---
id: 379
title: mtXcontrol meets Launchpad meets Rainbowduino
date: '2009-12-30 16:48:44 +0000'
permalink: "/2009/12/30/mtxcontrol-meets-launchpad-meets-rainbowduino/"
layout: post
categories:
- Arduino &amp; Co.
tags:
- RainbowDuino
- mtXcontrol
- Controller
- launchpad
comments: []
---
That's it! I just released mtXcontrol version 1.1 with lot of updates and improvements. One major improvement is full support for [Novation Launchpad](http://www.novationmusic.com/products/launchpad): just draw your sequences and display them on your Launchpad! Even better, push the buttons to change the color, add, remove, copy & paste frames. For that mtXcontrol makes usage of the [Launchpad Processing library](http://rngtng.github.com/launchpad) which I released some days ago.

But Rainbowduino support improved as well. I fixed lots of bugs and implemented requested features. Now you can control the display brightness, save up to 10 frames onto the device and serial port is auto detected. In general, I defined an basic API to communicate with the devices, which allows you to add more devices easily (e.g. monome!). With that, all Rainbowduino stuff is moved in a separate [Rainbowduino Processing library](http://rngtng.github.com/rainbowduino).

<http://vimeo.com/8456119>

See official [mtXcontrol](http://www.rngtng.com/mtXcontrol) project page for more.