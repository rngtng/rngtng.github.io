---
id: 624
title: Hacking the Nabaztag - Arduino injects via I2C data into RFID Reader
date: '2012-01-10 00:28:04 +0000'
permalink: "/2012/01/10/hacking-the-nabaztag-arduino-injects-via-i2c-data-into-rfid-reader/"
layout: post
categories:
- Arduino &amp; Co.
tags:
- hack
- Arduino
- nabaztag
- rfid
- inject
comments:
- id: 909
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2012-01-12 12:05:41 +0000'
  date_gmt: '2012-01-12 11:05:41 +0000'
  content: "Announced in Nabaztag Forums:\r\n\r\nFrench: http://nabaztag.forumactif.fr/t14009-hacked-nabaztag-arduino-rfid-send-any-custom-data-to-your-bunny#354842\r\n\r\nGerman:
    http://www.mynabaztag.de/thread.php?threadid=1409"
- id: 912
  author: Conzi
  author_email: mc@conzi.com
  author_url: http://www.openrabbit.de
  date: '2012-01-13 13:30:56 +0000'
  date_gmt: '2012-01-13 12:30:56 +0000'
  content: Great Work! I will have a deeper look into this this weekend. It's time
    to play around with the nabaztag:tag again ;-)
- id: 913
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2012-01-13 16:33:56 +0000'
  date_gmt: '2012-01-13 15:33:56 +0000'
  content: thx! I like openrabbit.de too, wish I could do same with Nabaztag....
---
![](http://farm7.staticflickr.com/6185/6151922207_019ac10ee4_d.jpg)

Wow! After [more than two years](http://www.rngtng.com/2009/12/02/hacking-the-nabaztag/) I finally got my hands dirty hacking the Nabaztag rabbit. The [release of the source code](http://code.google.com/p/nabaztag-source-code/) last summer were very encouraging here! Expect some awesome results in the next time :-)

Let's start with **NabaztagInjector** , an Arduino Library to inject data:

What bothered me for long was the missing possibility to connect external devices to the rabbit. How awesome would it be to use the rabbit for sending data into the net? Imagine it as WIFI shield you Arduino.

Guess what - that's possible: replacing the RFID reader with an Arduino (both use the I2C bus) running a simulation of the RFID reader chip, enabled me to inject any custom data to the rabbit. Hacked!

As result, I created this tiny Arduino library to encapsulates the full process behind and easy API:

[gist id=1582447]

Check out the full Readme, Source code and Examples here:  
<http://www.rngtng.com/nabaztag-injector-arduino-rfid-hack/>