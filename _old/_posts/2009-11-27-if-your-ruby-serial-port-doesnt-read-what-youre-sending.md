---
id: 334
title: 'If your ruby serial port doesn&#8217;t read what&#8217; you&#8217;re sending&#8230;'
date: 2009-11-27T17:57:29+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=334
permalink: /2009/11/27/if-your-ruby-serial-port-doesnt-read-what-youre-sending/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - communication
  - gem
  - launchpad
  - port
  - 'Rails &amp; Co.'
  - 'Ruby, Rails &amp; Co.'
  - serial
  - serialport
  - uart
---
Some days ago I got my [Novation](http://twitter.com/rngtng/status/5792203896) [launchpad](http://www.novationmusic.com/launchpad/){.broken_link} an immediately started hacking with some [Ruby](http://github.com/thomasjachmann/launchpad) and Arduino flavor. I wanted to port ccb23 [Raindrops Project](http://vimeo.com/6916458) to launchpad. 

For that, I needed Serial communication within ruby. Thanks to [ruby-serialport](http://ruby-serialport.rubyforge.org/){.broken_link} first steps went quite well. I could write OR read from and to Arduino easily. But for some reasons, writing AND reading using the same instance didn&#8217;t work out. 

I used a simple &#8216;send-input-back&#8217; sketch on the Arduino side. So every byte I&#8217;m sending is returned back. I checked with the Arduino IDE Serialmonitor and a simple Processing script &#8211; everything worked alright. But using ruby it was different. Writing to serial port worked okay, but reading from it was just random. Sometimes I read the response, sometime I didn&#8217;t &#8211; really, really weird. Some headaches and a lot of time testing I finally found the solution: just open two instances of the serial port. One for sending, one for reading &#8211; and, surprise, surprise &#8211; it works perfect! Who would have guessed that!? Strange.. 

[ruby]  
// To be completed  
require &#8216;serialport&#8217;  
port_write = Serialport.new()  
port_read = Serialport.new()  
[/ruby]

Ok, continuing hacking, more soon&#8230;