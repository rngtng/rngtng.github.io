---
id: 941
title: 'Hacking Rainbowduino 2017 &#8211; now BLE support'
date: 2017-01-29T21:55:01+01:00
author: admin
layout: post
guid: http://www.rngtng.com/?p=941
permalink: /2017/01/29/hacking-rainbowduino-2017-now-ble-support/
categories:
  - Happy Hacking
---
It&#8217;s 2017 and I finally wanted to get my hands dirty with some Bluetooth 4.0 LE gadget hacking.

Luckily I found this outdated project [MacOSXVirtualSerialPort](https://github.com/clokey/PublicCode/tree/master/MacOSXVirtualSerialPort) which gave me the final piece: Use socat to create two new serial ports which are innerconnected and send thier received data viceversa.

`brew install socat`

and exectue

`sudo socat -d -d  pty,link=/tmp/tty.ble,raw,echo=0,user=tobi,group=staff pty,link=/tmp/tty.serial,raw,echo=0,user=tobi,group=staff`

Voila now we have one port `/tmp/tty.serial` where we connect mtXcontrol to and `/tmp/tty.ble` where we connect the simple noble service too.

Finally the data chain looks like:

mtXcontrol -> rainbowduino processing lib -> processing serial -> `/tmp/tty.serial` -> `/tmp/tty.ble` -> nodejs serialport -> nodejs noble -> HM-10 -> Rainbowduino Serial