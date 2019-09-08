---
id: 610
title: 'NabaztagInjector &#8211; An Arduino RFID Hack'
date: 2012-01-09T01:49:54+01:00
author: tobi
layout: page
guid: http://www.rngtng.com/?page_id=610
networkpub_postmessage:
  - ""
networkpub_twitterhandle:
  - ""
networkpub_twitterhash:
  - ""
---
An Arduino library to send data to Violet Nabaztag via I2C (RFID injected)

Get the latest sources and see Readme at GitHub:  
<https://github.com/rngtng/NabaztagInjector/>

## What it does

Let&#8217;s use our Nabaztag Rabbit to send some data from Arduino to the Internet. Huh! &#8211; But how?

The [Nabaztag](http://en.wikipedia.org/wiki/Nabaztag) is (was) Rabbit connected to the Internet. Well, actually it&#8217;s an ARM7 processor equipped with WIFI and a couple of output and input sensors. Those input sources are:

  * a microphone
  * RFID reader
  * a button
  * tow ears which can be moved

On first sight it doesn&#8217;t seam there&#8217;s any option to connect an external device for sending data to the rabbit. But a closer look on the RFID reader showed, that the used CRX14 chip talks via I2C bus to the processor, and luckily the very same bus is also available on the Arduino.

The RFID reader works in a way, that on demand by the processor, any nearby RFID tags are discovered, requested for their 8 Byte long UID and reported back to the processor.

And that&#8217;s where **NabaztagInjector** hooks in: It pushes the Arduino to act in the very same way the RFID chip would, but instead of returning RFID tag UIDs it sends back any custom 8 Bytes of data (make sure to check _Caveats_ below)

As the nature of I2C, each device has a unique address on the bus. So either **NabaztagInjector** or the reader can be connected at the same time &#8211; unless we are smart:

To have both devices talking to the rabbit without interference we simply switch the reader on and off and change I2C addresses on the Arduino. So either RFID reader acts as normal and Arduino has a dummy I2C address, or the reader is turned off and Arduino takes its address. To archive this, the Arduino uses a OUTPUT pin for powering the RFID reader (see_setup_) and therefore has full control over its power state.

## Usage

**NabaztagInjector** is a static class with a very simple interface reduced down to two methods:

  1. `Nabaztag.begin(<pin number>)`
  2. `Nabaztag.inject(<data>)` or `Nabaztag.inject(<*data>, length)`

The first one, `Nabaztag.begin(<pin number>)` initializes the I2C bus and turns on the RFID reader. `<pin number>` is the pin on Arduino where you connected _Vcc_ to (_see setup_). To send data to your Rabbit, simply call `Nabaztag.inject(<data>)` which puts the data into send buffer, and will be send as soon it&#8217;s requested. As data is internally buffered (size 128 bytes), method call is non-blocking and can be called several times, even if data didn&#8217;t got yet delivered. The default Nabaztag Firmware request a RFID about every second.

For real-live usecases, check out the examples folder for more.

## Installation

Put the library into your Arduino libraries folder, and do same with [ByteBuffer](http://siggiorn.com/wp-content/uploads/libraries/ArduinoByteBuffer.zip){.broken_link}.

## Compilation

**NabaztagInjector** compiles with the latest Arduino IDE, as well as with the [Arduino.mk Makefile](http://mjo.tc/atelier/2009/02/arduino-cli.html){.broken_link}. See examples folder.

## Setup

See the picture:

<img src="http://www.rngtng.com/files/2012/01/nabaztag-arduino-rfid-hack.jpg" alt="" width="500" /> 

Starting from the Nabaztag mainboard: the RFID reader connector is on top left (Q2). From top to bottom the pins are: _VCC (Q2)_, _GND (Blue)_, _SDA (Red)_, _SCL (Green)_. Connect _SCL_ to Arduino _Analog Pin 5_, _SDA_ to _Analog Pin 4_, _GND_ to _GND_. _VCC_ can be left blank if Arduino has its own power supply, otherwise connect to Arduino power input. Connected RFID readers _VCC_ to the pin given in`Nabaztag.begin(<pin number>)`. Go to examples folder, compile and upload sketch.

That&#8217;s it! Happy injecting!

## Dependencies

For I2C communication, **NabaztagInjector** depends on the Arduino core library _Wire_. The circular send buffer depends on the [_ByteBuffer_library](http://siggiorn.com/?p=460) by Siggi, and is included within the example code.

## Caveats

As always there are some Caveats:

### Performance

The RFID chip and the Nabaztag firmware support up 16 devices UIDs per request. Unfortunately the default bootcode doesn&#8217;t take advantage of that, so no way to speed it up. (unless you write your own bootcode, see _Custom bootcode_ below)

### Speed

The rabbit request rfid about every 750-1000ms. The 128 byte Buffer helps here to process high frequent data peaks, but obviously constant high frequent data will result in data loss.

### Data

The default bootcode take only IDS as valid when upper 3 Bytes are larger than zero, fill up empty data with `0xFF` is used as workaround here.

### Power

I couldn&#8217;t manage to power Arduino + RFID solely by the rabbit. Arduino in standalone mode worked fine though! Maybe simple amplifier circuit would help?

### Nabaztag version

I used a Nabaztag V2. Not sure if this works with V1 or [Karotz](http://www.karotz.com/home){.broken_link} as well.

### Custom bootcode

Yes, it&#8217;s possible to write your own custom bootcode which allows to get rid of most of the constraints. Pls check my blogpost on that.

### Supported OS

Software developed on Mac OS X. In theory is should compile on Linux & Win smoothly. Please confirm.

### RFID Connector

Tests showed that there was actually no need to turn off the RFID reader chip while Arduino was sending. It was fully working by connecting just both _VCC_. Actually it felt even more stable.

Read on and get the latest sources at GitHub:  
<https://github.com/rngtng/NabaztagInjector/>