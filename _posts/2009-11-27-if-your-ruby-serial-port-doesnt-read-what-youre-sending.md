---
id: 334
title: If your ruby serial port doesn't read what' you're sending...
date: '2009-11-27 17:57:29 +0000'
permalink: "/2009/11/27/if-your-ruby-serial-port-doesnt-read-what-youre-sending/"
layout: post
categories:
- Ruby, Rails &amp; Co.
tags:
- Ruby, Rails &amp; Co.
- serialport
- Rails &amp; Co.
- uart
- launchpad
- gem
- serial
- port
- communication
comments:
- id: 575
  author: Jonathan
  author_email: jonathan.anders.pettersson@gmail.com
  author_url: ''
  date: '2010-10-24 02:41:37 +0000'
  date_gmt: '2010-10-24 00:41:37 +0000'
  content: "wow.. nice work! \r\nI had the exact same issue and this solved it. Haven't
    lost a bit since.\r\n\r\nthanks, \r\nJ"
---
Some days ago I got my [Novation](http://twitter.com/rngtng/status/5792203896) [launchpad](http://www.novationmusic.com/launchpad/) an immediately started hacking with some [Ruby](http://github.com/thomasjachmann/launchpad) and Arduino flavor. I wanted to port ccb23 [Raindrops Project](http://vimeo.com/6916458) to launchpad.

For that, I needed Serial communication within ruby. Thanks to [ruby-serialport](http://ruby-serialport.rubyforge.org/) first steps went quite well. I could write OR read from and to Arduino easily. But for some reasons, writing AND reading using the same instance didn't work out.

I used a simple 'send-input-back' sketch on the Arduino side. So every byte I'm sending is returned back. I checked with the Arduino IDE Serialmonitor and a simple Processing script - everything worked alright. But using ruby it was different. Writing to serial port worked okay, but reading from it was just random. Sometimes I read the response, sometime I didn't - really, really weird. Some headaches and a lot of time testing I finally found the solution: just open two instances of the serial port. One for sending, one for reading - and, surprise, surprise - it works perfect! Who would have guessed that!? Strange..

[ruby]  
// To be completed  
require 'serialport'  
port_write = Serialport.new()  
port_read = Serialport.new()  
[/ruby]

Ok, continuing hacking, more soon...