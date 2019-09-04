---
id: 394
title: 'mtXcontrol sneak preview &#8211; rainbowduino beta library goes master and slave'
date: 2010-09-05T18:38:25+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=394
permalink: /2010/09/05/mtxcontrol-sneak-preview-rainbowduino-beta-library-master-and-slave/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Arduino &amp; Co.'
tags:
  - Arduino
  - launchpad
  - mtXcontrol
  - processing
  - RainbowCube
  - RainbowDuino
---
[vimeo]<http://www.vimeo.com/10377543[/vimeo]>

Now, as I&#8217;m finally getting settled, it&#8217;s time to kick of mtXcontrol development again. So first, I&#8217;ll continue working on the raw rainbowduino interaction which is the firmware, a communication protocol and a processing library, all summerized in the **Processing library -Rainbowduino-**. Current development going on, [here, check it out](http://github.com/rngtng/rainbowduino). It&#8217;s still in a beta state, but ready and good for testing. 

Just to make you curious here some new cool upcoming features:  
* support for multiple & cascading Rainbowduinos  
* auto port detection  
* plug and play  
* (auto) firmware upload  
* [Rainbow Cube support](http://www.seeedstudio.com/depot/rainbow-cube-kit-rgb-4x4x4-rainbowduino-compatible-p-596.html?cPath=71&zenid=6f5af82edb45a559db6dd5e4531b5faf)  
* updated, more robust protocol

The video above show a quick preview of the upcoming Rainbowduino Firmware release &#8216;Master and Slave&#8217;.

You see two Rainbowduinos, the left one as Master connected via Serial to Mac, the right one as Slave connected via I2C to master. The blinking LEDs are merely debug output, interesting part is the changing brightness of the slave. The command to change brightness is send via Serial, received by the master and forwarded to the slave via I2C. With that multiple rainbowudinos can be connected in a row easily. 

And the Best: both run the same(!!!) firmware. The master/slave role and I2C address are auto detected on startup. As easy as that! 

Stay tuned!!