---
id: 379
title: mtXcontrol meets Launchpad meets Rainbowduino
date: 2009-12-30T16:48:44+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=379
permalink: /2009/12/30/mtxcontrol-meets-launchpad-meets-rainbowduino/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Arduino & Co.'
tags:
  - Controller
  - launchpad
  - mtXcontrol
  - RainbowDuino
---
That&#8217;s it! I just released mtXcontrol version 1.1 with lot of updates and improvements. One major improvement is full support for [Novation Launchpad](http://www.novationmusic.com/products/launchpad){.broken_link}: just draw your sequences and display them on your Launchpad! Even better, push the buttons to change the color, add, remove, copy & paste frames. For that mtXcontrol makes usage of the [Launchpad Processing library](http://rngtng.github.com/launchpad) which I released some days ago.

But Rainbowduino support improved as well. I fixed lots of bugs and implemented requested features. Now you can control the display brightness, save up to 10 frames onto the device and serial port is auto detected. In general, I defined an basic API to communicate with the devices, which allows you to add more devices easily (e.g. monome!). With that, all Rainbowduino stuff is moved in a separate [Rainbowduino Processing library](http://rngtng.github.com/rainbowduino). 

<http://vimeo.com/8456119>

See official [mtXcontrol](http://www.rngtng.com/mtXcontrol) project page for more.