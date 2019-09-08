---
id: 131
title: RainbowDuino here it is! (and how to program it)
date: 2009-06-25T11:32:50+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=131
permalink: /2009/06/25/rainbowduino-here-it-is-and-how-to-program-it/
openid_comments:
  - 'a:1:{i:0;s:3:"413";}'
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Arduino & Co.'
tags:
  - Arduino
  - mtXcontrol
  - program
  - RainbowDuino
  - uart
---
<img src="http://www.rngtng.com/files/2009/06/rainbowduino2.jpg" alt="rainbowduino2" width="571" height="348" class="alignnone size-full wp-image-132" srcset="http://www.rngtng.com/files/2009/06/rainbowduino2.jpg 571w, http://www.rngtng.com/files/2009/06/rainbowduino2-300x182.jpg 300w" sizes="(max-width: 571px) 100vw, 571px" />  
Yay &#8211; I finally got my [RainbowDuino](http://www.seeedstudio.com/blog/?p=410). Unluckily I did sth wrong with the external power connection (JST 2 pin jack) and smashed a capacitor. Maybe the polarity was wrong or it couldn&#8217;t stand the 12 volts? But luckily no damage to the main system so it still works using the terminal connector (right through the 5volts of the Arduino). \*phew\*

The first real basic problem I ran into [was how to program the Rainbowduino](http://www.seeedstudio.com/forum/viewtopic.php?f=4&t=328) as there&#8217;s no USB connector and I don&#8217;t have an UART interface.  
[But well, nothing simpler than that:](http://www.seeedstudio.com/blog/?p=420) Just connect your Arduino&#8217;s Tx,Rx,GND,Reset and Vcc ports with those of the Rainbowduino, choose the right controller type in your IDE and program it as usual &#8211; works perfect for me!

Check out my [Rainbowduino Editor mtXcontrol here](http://www.rngtng.com/mtXcontrol) &#8211; it&#8217;s an easy way to draw shapes on your rainbowduino!

Btw. _DTR_ on Rainbowduino is _Reset_ on Arduino

**UPDATE:**  
Sorry I forgot to mention, this trick does NOT work if your host arduino is a ATmega168 &#8211; you need an ATmega328 to pass serial communication through. Before that, make sure you upload this blank sketch to your host Arduino first:

[code]  
/\* blank sketch to upload on Arduino \*/  
void setup()  
{  
}

void loop()  
{  
}

[/code]

And, as multiple times requested, a picture of my complete setup:  
<img src="http://www.rngtng.com/files/2009/06/arduino_rainbowduino.jpg" alt="arduino_rainbowduino" width="600" class="aligncenter size-full wp-image-296" srcset="http://www.rngtng.com/files/2009/06/arduino_rainbowduino.jpg 734w, http://www.rngtng.com/files/2009/06/arduino_rainbowduino-300x219.jpg 300w" sizes="(max-width: 734px) 100vw, 734px" /> 

Make sure you&#8217;ve selected the switch right. It has to point to the same side as the green Terminal connectors are. If you power rainbowduino through the white JST jack, flip it!