---
id: 610
title: NabaztagInjector &#8211; An Arduino RFID Hack
date: 2012-01-09 01:49:54.000000000 +01:00
permalink: "/nabaztag-injector-arduino-rfid-hack/"
layout: page
categories: []
tags: []
comments:
- id: 908
  author: Hacking the Nabaztag &#8211; Arduino injects via I2C data into RFID Reader
    | uRaNGaTaNG
  author_email: ''
  author_url: http://www.rngtng.com/2012/01/10/hacking-the-nabaztag-arduino-injects-via-i2c-data-into-rfid-reader/
  date: '2012-01-12 11:08:16 +0000'
  date_gmt: '2012-01-12 10:08:16 +0000'
  content: "[...] Featuring Ruby, Rails, Web development, Arduino, Processing, Nabaztag
    and more&#8230;   NabaztagInjector [...]"
- id: 1249
  author: peko
  author_email: peko@gasubasu.com
  author_url: ''
  date: '2012-08-22 12:15:58 +0000'
  date_gmt: '2012-08-22 11:15:58 +0000'
  content: seem like image  link broken https://a248.e.akamai.net/assets.github.com/img/65c06b656d8b967a6b21c3caac08a5ac9b2b1fe3/687474703a2f2f7777772e726e67746e672e636f6d2f66696c65732f323031322f30312f6e6162617a7461672d61726475696e6f2d726669642d6861636b2e6a7067
---
An Arduino library to send data to Violet Nabaztag via I2C (RFID injected)

Get the latest sources and see Readme at GitHub:  
 <https://github.com/rngtng/NabaztagInjector/>

## What it does

Let's use our Nabaztag Rabbit to send some data from Arduino to the Internet. Huh! - But how?

The&nbsp;[Nabaztag](http://en.wikipedia.org/wiki/Nabaztag)&nbsp;is (was) Rabbit connected to the Internet. Well, actually it's an ARM7 processor equipped with WIFI and a couple of output and input sensors. Those input sources are:

- a microphone
- RFID reader
- a button
- tow ears which can be moved

On first sight it doesn't seam there's any option to connect an external device for sending data to the rabbit. But a closer look on the RFID reader showed, that the used CRX14 chip talks via I2C bus to the processor, and luckily the very same bus is also available on the Arduino.

The RFID reader works in a way, that on demand by the processor, any nearby RFID tags are discovered, requested for their 8 Byte long UID and reported back to the processor.

And that's where&nbsp; **NabaztagInjector** &nbsp;hooks in: It pushes the Arduino to act in the very same way the RFID chip would, but instead of returning RFID tag UIDs it sends back any custom 8 Bytes of data (make sure to check&nbsp;_Caveats_&nbsp;below)

As the nature of I2C, each device has a unique address on the bus. So either&nbsp; **NabaztagInjector** &nbsp;or the reader can be connected at the same time - unless we are smart:

To have both devices talking to the rabbit without interference we simply switch the reader on and off and change I2C addresses on the Arduino. So either RFID reader acts as normal and Arduino has a dummy I2C address, or the reader is turned off and Arduino takes its address. To archive this, the Arduino uses a OUTPUT pin for powering the RFID reader (see_setup_) and therefore has full control over its power state.

## Usage

**NabaztagInjector** &nbsp;is a static class with a very simple interface reduced down to two methods:

1. `Nabaztag.begin(
)`
2. `Nabaztag.inject()`&nbsp;or&nbsp;`Nabaztag.inject(, length)`

The first one,&nbsp;`Nabaztag.begin(
)`&nbsp;initializes the I2C bus and turns on the RFID reader.&nbsp;`
`&nbsp;is the pin on Arduino where you connected&nbsp;_Vcc_&nbsp;to (_see setup_). To send data to your Rabbit, simply call&nbsp;`Nabaztag.inject()`&nbsp;which puts the data into send buffer, and will be send as soon it's requested. As data is internally buffered (size 128 bytes), method call is non-blocking and can be called several times, even if data didn't got yet delivered. The default Nabaztag Firmware request a RFID about every second.

For real-live usecases, check out the examples folder for more.

## Installation

Put the library into your Arduino libraries folder, and do same with&nbsp;[ByteBuffer](http://siggiorn.com/wp-content/uploads/libraries/ArduinoByteBuffer.zip).

## Compilation

**NabaztagInjector** &nbsp;compiles with the latest Arduino IDE, as well as with the&nbsp;[Arduino.mk Makefile](http://mjo.tc/atelier/2009/02/arduino-cli.html). See examples folder.

## Setup

See the picture:

![](http://www.rngtng.com/files/2012/01/nabaztag-arduino-rfid-hack.jpg)

Starting from the Nabaztag mainboard: the RFID reader connector is on top left (Q2). From top to bottom the pins are:&nbsp;_VCC (Q2)_,&nbsp;_GND (Blue)_,&nbsp;_SDA (Red)_,&nbsp;_SCL (Green)_. Connect&nbsp;_SCL_&nbsp;to Arduino&nbsp;_Analog Pin 5_,&nbsp;_SDA_&nbsp;to&nbsp;_Analog Pin 4_,&nbsp;_GND_&nbsp;to&nbsp;_GND_.&nbsp;_VCC_&nbsp;can be left blank if Arduino has its own power supply, otherwise connect to Arduino power input. Connected RFID readers&nbsp;_VCC_&nbsp;to the pin given in`Nabaztag.begin(
)`. Go to examples folder, compile and upload sketch.

That's it! Happy injecting!

## Dependencies

For I2C communication,&nbsp; **NabaztagInjector** &nbsp;depends on the Arduino core library&nbsp;_Wire_. The circular send buffer depends on the&nbsp;[_ByteBuffer_library](http://siggiorn.com/?p=460)&nbsp;by Siggi, and is included within the example code.

## Caveats

As always there are some Caveats:

### Performance

The RFID chip and the Nabaztag firmware support up 16 devices UIDs per request. Unfortunately the default bootcode doesn't take advantage of that, so no way to speed it up. (unless you write your own bootcode, see&nbsp;_Custom bootcode_&nbsp;below)

### Speed

The rabbit request rfid about every 750-1000ms. The 128 byte Buffer helps here to process high frequent data peaks, but obviously constant high frequent data will result in data loss.

### Data

The default bootcode take only IDS as valid when upper 3 Bytes are larger than zero, fill up empty data with&nbsp;`0xFF`&nbsp;is used as workaround here.

### Power

I couldn't manage to power Arduino + RFID solely by the rabbit. Arduino in standalone mode worked fine though! Maybe simple amplifier circuit would help?

### Nabaztag version

I used a Nabaztag V2. Not sure if this works with V1 or&nbsp;[Karotz](http://www.karotz.com/home)&nbsp;as well.

### Custom bootcode

Yes, it's possible to write your own custom bootcode which allows to get rid of most of the constraints. Pls check my blogpost on that.

### Supported OS

Software developed on Mac OS X. In theory is should compile on Linux & Win smoothly. Please confirm.

### RFID Connector

Tests showed that there was actually no need to turn off the RFID reader chip while Arduino was sending. It was fully working by connecting just both&nbsp;_VCC_. Actually it felt even more stable.

Read on and get the latest sources at GitHub:  
 <https://github.com/rngtng/NabaztagInjector/>