---
id: 394
title: mtXcontrol sneak preview - rainbowduino beta library goes master and slave
date: '2010-09-05 18:38:25 +0000'
permalink: "/2010/09/05/mtxcontrol-sneak-preview-rainbowduino-beta-library-master-and-slave/"
layout: post
categories:
- Arduino &amp; Co.
tags:
- processing
- Arduino
- RainbowDuino
- mtXcontrol
- launchpad
- RainbowCube
comments:
- id: 632
  author: cubeXcontrol &#8211; a Rainbow Cube Editor | uRaNGaTaNG
  author_email: ''
  author_url: http://www.rngtng.com/2010/12/31/cubexcontrol-a-rainbow-cube-editor/
  date: '2011-01-21 12:45:47 +0000'
  date_gmt: '2011-01-21 10:45:47 +0000'
  content: "[...] latest mtXcontrol version, with the latest rainbowduino firmware.
    Both are unfortunately still in beta stage, but come with great new features like
    auto port [...]"
- id: 705
  author: kin37ik
  author_email: dr.grumbles99@hotmail.com
  author_url: ''
  date: '2011-05-08 10:31:42 +0000'
  date_gmt: '2011-05-08 08:31:42 +0000'
  content: firmware doesnt install, compiler just throws back errors, how do i fix
    it?
- id: 706
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-05-08 10:39:56 +0000'
  date_gmt: '2011-05-08 08:39:56 +0000'
  content: Which errors does it throw??
- id: 734
  author: kin37ik
  author_email: dr.grumbles99@hotmail.com
  author_url: ''
  date: '2011-06-28 14:39:04 +0000'
  date_gmt: '2011-06-28 12:39:04 +0000'
  content: "sorry for the super super late reply, i had a system crash and just located
    this blog again, i keep getting this error:\r\n\r\nRainbowduino.cpp:0: error:
    expected constructor, destructor, or type conversion before '/' token"
- id: 1095
  author: genafk
  author_email: genafk@gmail.com
  author_url: ''
  date: '2012-05-14 06:42:01 +0000'
  date_gmt: '2012-05-14 05:42:01 +0000'
  content: 'hi, im having the same problem as kin37ik above there, arduino 0022 keeps
    giving me the error Rainbowduino.cpp:0: error: expected constructor, destructor
    or type conversion before ''/'' token, how do i fix this, i want to put MTX control
    on my rainbowduinos'
---
http://www.vimeo.com/10377543

Now, as I'm finally getting settled, it's time to kick of mtXcontrol development again. So first, I'll continue working on the raw rainbowduino interaction which is the firmware, a communication protocol and a processing library, all summerized in the **Processing library -Rainbowduino-**. Current development going on, [here, check it out](http://github.com/rngtng/rainbowduino). It's still in a beta state, but ready and good for testing.

Just to make you curious here some new cool upcoming features:  
\* support for multiple & cascading Rainbowduinos  
\* auto port detection  
\* plug and play  
\* (auto) firmware upload  
\* [Rainbow Cube support](http://www.seeedstudio.com/depot/rainbow-cube-kit-rgb-4x4x4-rainbowduino-compatible-p-596.html?cPath=71&zenid=6f5af82edb45a559db6dd5e4531b5faf)  
\* updated, more robust protocol

The video above show a quick preview of the upcoming Rainbowduino Firmware release 'Master and Slave'.

You see two Rainbowduinos, the left one as Master connected via Serial to Mac, the right one as Slave connected via I2C to master. The blinking LEDs are merely debug output, interesting part is the changing brightness of the slave. The command to change brightness is send via Serial, received by the master and forwarded to the slave via I2C. With that multiple rainbowudinos can be connected in a row easily.

And the Best: both run the same(!!!) firmware. The master/slave role and I2C address are auto detected on startup. As easy as that!

Stay tuned!!