---
id: 367
title: launchpad
date: 2009-12-20T16:50:32+01:00
author: tobi
layout: page
guid: http://www.rngtng.com/?page_id=367
---
The [Novation&#8217;s launchpad](http://www.novationmusic.com/products/launchpad){.broken_link} is a 8&#215;8 RG LED MIDI controller similar to the [Monome](http://monome.org/). In addition, it has 8 Button on the top and 8 Scene Button on the left. Originally meant as MIDI Controller its bundled with Ableton Live to pimp your DJ Sets and Tunes. All over it&#8217;s a wonderful device, not only for your music, but for doing some LED ouput & input hacking.

Thomas Jachmanns released a [ruby library gem](http://github.com/thomasjachmann/launchpad) quite soon after the device was released. But by now, I couldn&#8217;t find any Processing/Java support, so it&#8217;s was time to create a proper wrapper library&#8230; and here it is!

The library provides an interface to access novation&#8217;s launchpad programmatically and is heavily based on ruby launchpad gem which you can see by it&#8217;s similar APIs. LEDs can be lighted and button presses can be listened to.

In addition, it includes a wrapper for the Monomic Library, so you can port all Monome Processing code to Launchpad easily!

It&#8217;s [project page](http://rngtng.github.com/launchpad/) and its [source](http://github.com/rngtng/launchpad) is hosted on github. Please feel free to use it for your proposes and fork and improve the source!  
[vimeo]<http://www.vimeo.com/7832566[/vimeo]>

more Video examples comming soon!