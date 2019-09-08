---
id: 624
title: 'Hacking the Nabaztag &#8211; Arduino injects via I2C data into RFID Reader'
date: 2012-01-10T00:28:04+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=624
permalink: /2012/01/10/hacking-the-nabaztag-arduino-injects-via-i2c-data-into-rfid-reader/
categories:
  - 'Arduino & Co.'
tags:
  - Arduino
  - hack
  - inject
  - nabaztag
  - rfid
---
<img src="http://farm7.staticflickr.com/6185/6151922207_019ac10ee4_d.jpg" alt="" width="500" height="500" class="aligncenter size-full wp-image-626" />

Wow! After [more than two years](/2009/12/02/hacking-the-nabaztag/) I finally got my hands dirty hacking the Nabaztag rabbit. The [release of the source code](http://code.google.com/p/nabaztag-source-code/) last summer were very encouraging here! Expect some awesome results in the next time 🙂 

Let&#8217;s start with **NabaztagInjector**, an Arduino Library to inject data:

What bothered me for long was the missing possibility to connect external devices to the rabbit. How awesome would it be to use the rabbit for sending data into the net? Imagine it as WIFI shield you Arduino.

Guess what &#8211; that&#8217;s possible: replacing the RFID reader with an Arduino (both use the I2C bus) running a simulation of the RFID reader chip, enabled me to inject any custom data to the rabbit. Hacked!

As result, I created this tiny Arduino library to encapsulates the full process behind and easy API:

[gist id=1582447]

Check out the full Readme, Source code and Examples here:  
<http://www.rngtng.com/nabaztag-injector-arduino-rfid-hack/>