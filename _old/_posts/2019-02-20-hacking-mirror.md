---
id: 990
title: Hacking mir:ror
date: 2019-02-20T00:41:18+01:00
author: admin
layout: post
guid: http://www.rngtng.com/?p=990
permalink: /2019/02/20/hacking-mirror/
categories:
  - Happy Hacking
tags:
  - hacking
  - Mac OS X
  - nabaztag
  - nfc
  - usb
---
[<img class="size-full wp-image-992 aligncenter" src="http://www.rngtng.com/files/2019/02/Screenshot-2019-02-19-at-23.33.52.png" alt="" width="552" height="558" srcset="http://www.rngtng.com/files/2019/02/Screenshot-2019-02-19-at-23.33.52.png 552w, http://www.rngtng.com/files/2019/02/Screenshot-2019-02-19-at-23.33.52-297x300.png 297w" sizes="(max-width: 552px) 100vw, 552px" />](/files/2019/02/Screenshot-2019-02-19-at-23.33.52.png)Finally! All of a sudden I got an evening with ccb23 to hack of lives away. This time: NFC like it&#8217;s 2009. Aka violet mir:ror.

Out of the blue we were brainstroming how to DYI [hörbert](https://www.hoerbert.com/), a smart mp3 player for our youngest. Here, a mp3 is selected via NFC sensor. O.T: &#8220;NFC sensor!? Wait, I remember having touch this years ago, lemme get the Nabaztag&#8221;. And indeed, along with the infamous Nabaztag IOT rabbit, violet released a side product called [&#8216;mir:ror&#8217;](https://en.wikipedia.org/wiki/Mir:ror) in [2009](https://www.engadget.com/2009/04/21/nabaztags-violet-rfid-readin-usb-mirror-now-available)(?). It&#8217;s a NFC to USB device meant to showcase & utilize its capabilities. To bad official drivers were only released for WIN and discontinued with the bankrupt of violet. But opensource to rescue. We quick figure the device adheres to HID standard, so let&#8217;s get it working (on a mac/linux).

After [confirming the device](https://stackoverflow.com/questions/17058134/is-there-an-equivalent-of-lsusb-for-os-x) is recognised in MacOS X we got hooked. Next, with a quick google search we first discovered <http://reflektor.sourceforge.net> &#8211; an OOO implementation based on [hidraw](https://www.kernel.org/doc/Documentation/hid/hidraw.txt). too bad kernel extension is Linux specific, so next the [HIDapi,](http://www.signal11.us/oss/hidapi/){.broken_link} an OS agnostic lib for general purpose use, felt promising. [Indeed, we got the mir:ror up and running the first time on Mac](https://gist.github.com/rngtng/8b10af29768f19f91ad36b42ac99d934), although reading was non blocking and we couldn&#8217;t really make sense out of it. After various back and forth, we jumped back to start: let&#8217;s check on linux first. So with virtualbox and ubuntu we were able to install reflektor and use it via hidraw. Worked like a charm! So next is porting this to MacOSX and getting deeper understand of mirware. What commands are supported? Modifying (or just turning off) the choreo would be a huge plus towards using mir:ror for our custom mp3 project. In anycase, this 10 years old device was way ahead of its time and still works like wooow!

Sources worth to check:

<http://reflektor.sourceforge.net/links.php>

<http://arduino-projects4u.com/violet-mirror/>

<https://github.com/suan/mirlite>

<https://github.com/leh/ruby-mirror><figure class="wp-block-embed"> 

<div class="wp-block-embed__wrapper">
  <a href="http://arduino-projects4u.com/violet-mirror/">http://arduino-projects4u.com/violet-mirror/</a>
</div></figure>