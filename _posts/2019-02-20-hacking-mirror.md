---
id: 990
title: Hacking mir:ror
date: '2019-02-20 00:41:18 +0000'
permalink: "/2019/02/20/hacking-mirror/"
layout: post
categories:
- Happy Hacking
tags:
- usb
- Mac OS X
- nabaztag
- hacking
- nfc
comments: []
---
<!-- wp:paragraph -->

[![](http://www.rngtng.com/files/2019/02/Screenshot-2019-02-19-at-23.33.52.png)](http://www.rngtng.com/files/2019/02/Screenshot-2019-02-19-at-23.33.52.png)Finally! All of a sudden I got an evening with ccb23 to hack of lives away. This time: NFC like it's 2009. Aka violet mir:ror.

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

Out of the blue we were brainstroming how to DYI [hörbert](https://www.hoerbert.com/), a smart mp3 player for our youngest. Here, a mp3 is selected via NFC sensor. O.T: "NFC sensor!? Wait, I remember having touch this years ago, lemme get the Nabaztag". And indeed, along with the infamous Nabaztag IOT rabbit, violet released a side product called ['mir:ror'](https://en.wikipedia.org/wiki/Mir:ror) in [2009](https://www.engadget.com/2009/04/21/nabaztags-violet-rfid-readin-usb-mirror-now-available)(?). It's a NFC to USB device meant to showcase & utilize its capabilities. To bad official drivers were only released for WIN and discontinued with the bankrupt of violet. But opensource to rescue. We quick figure the device adheres to HID standard, so let's get it working (on a mac/linux).

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

After [confirming the device](https://stackoverflow.com/questions/17058134/is-there-an-equivalent-of-lsusb-for-os-x) is recognised in MacOS X we got hooked. Next, with a quick google search we first discovered <http://reflektor.sourceforge.net> - an OOO implementation based on [hidraw](https://www.kernel.org/doc/Documentation/hid/hidraw.txt). too bad kernel extension is Linux specific, so next the [HIDapi,](http://www.signal11.us/oss/hidapi/) an OS agnostic lib for general purpose use, felt promising. [Indeed, we got the mir:ror up and running the first time on Mac](https://gist.github.com/rngtng/8b10af29768f19f91ad36b42ac99d934), although reading was non blocking and we couldn't really make sense out of it. After various back and forth, we jumped back to start: let's check on linux first. So with virtualbox and ubuntu we were able to install reflektor and use it via hidraw. Worked like a charm! So next is porting this to MacOSX and getting deeper understand of mirware. What commands are supported? Modifying (or just turning off) the choreo would be a huge plus towards using mir:ror for our custom mp3 project. In anycase, this 10 years old device was way ahead of its time and still works like wooow!

<!-- /wp:paragraph -->

<!-- wp:paragraph --><!-- /wp:paragraph -->

<!-- wp:paragraph -->

Sources worth to check:

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

[http://reflektor.sourceforge.net/links.php](http://reflektor.sourceforge.net/links.php)

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

[http://arduino-projects4u.com/violet-mirror/](http://arduino-projects4u.com/violet-mirror/)

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

[https://github.com/suan/mirlite](https://github.com/suan/mirlite)

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

[https://github.com/leh/ruby-mirror](https://github.com/leh/ruby-mirror)

<!-- /wp:paragraph -->

<!-- wp:embed {"url":"http://arduino-projects4u.com/violet-mirror/"} -->

<figure class="wp-block-embed">
<div class="wp-block-embed__wrapper">http://arduino-projects4u.com/violet-mirror/</div>
</figure>