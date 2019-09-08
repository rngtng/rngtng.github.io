---
title: Hacking the Pinball machine (Take Two)
date: '2014-11-30 20:26:47 +0000'
layout: post
categories:
- Happy Hacking
- Pinball
tags:
- hacking
- pinball
- raspberry pi
comments: []
---
30.Nov 2014

Wow, wow, wow - I finally got my hand dirty hacking. Together with ccb23, I (once again) opened up our [Teenage Mutant Ninja Turtles Pinball](http://www.ipdb.org/machine.cgi?gid=2509) machine to 'pirate' the current game score to throw into teh internetz!

To be honest, it's take two. We already did so nearly 18 month ago, but failed to document and write about our experience in full. In short, we reverse-engineered the graphic card protocol of the pinball machine, connected an Arduino to listen on the bus and 'pirate' the game score. But due to its lack of internet connection we forwarded the data via RFID injection to a Nabaztag Rabbit, which send the message to an API endpoint of a rails application. So what's left are a couple of prototype projects:

- A [Arduino sketch](https://github.com/rngtng/NabaztagInjector/blob/master/examples/pirate/pirate.ino) to listen to the graphic-bus.
- The [NabaztagInjector](/nabaztag-injector-arduino-rfid-hack/) to send the data via RFID to a WIFI connected Nabaztag rabbit.
- A rails app & API [PinPirate](http://github.com/rngtng/) to receive the data, display the score and send out tweets.

Yes, this worked! Proof of concept - done! Unfortunately it turned out that all was very shaky and not very reliable, so we left it for a while until now, back to tackle the challenge again, but this time with a different approach: enter [RaspberryPi](http://www.raspberrypi.org).

Advantage:  
- on board Internet

Disadvantage:  
- we have a full OS - access to interrupts way more complicated

ccb23 managed to write a kernel module to direct access to Interrupts: <http://elinux.org/RPi_Low-level_peripherals>

With this module loaded and the pinball machine connected, listening to the graphic bus is as simple as:  
`cat /dev/????`

[![GPIOs](/files/2013/07/GPIOs.png)](/files/2013/07/GPIOs.png)