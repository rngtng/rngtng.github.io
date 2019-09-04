---
id: 928
title: 'Hack my Car &#8211; ODB and GPS'
date: 2019-04-23T21:59:02+01:00
author: admin
layout: post
guid: http://www.rngtng.com/?p=928
permalink: /2019/04/23/hack-my-car-odb-and-gps/
categories:
  - Happy Hacking
---
I got myself a ODB-diagnoseger√§t from china. Of course it didn&#8217;t work right away and I had to readz the internets for fixing. First I had to find a sitable driver. USB identifier was: Product ID: 0x7523 Vendor ID: 0x1a86. THis looks like a CH340 / CH341 Serial / USB Chip. Luckily I found the drivers here:

<http://0xcf.com/2015/03/13/chinese-arduinos-with-ch340-ch341-serial-usb-chip-on-os-x-yosemite/>

VAG-COM 409.1 + Wine: <https://appdb.winehq.org/objectManager.php?sClass=version&iId=33443>  
VAG-COM 409.1 + Win7: <http://www.passatworld.com/forums/volkswagen-passat-b5-discussion/303177-vag-com-409-1-3rd-party-windows-7-64-bit.html>

Kabel Fix:  
&#8211; <http://www.sprinter-forum.net/archive/index.php/t-16816.html?s=431faad6d4d5c53154b970ef0d7a5d65>  
&#8211; <http://legacygt.com/forums/showthread.php/vag-com-cables-chipsets-ft232rl-ch340-214994p4.html>  
&#8211; <https://github.com/nodemcu/nodemcu-devkit-v1.0/issues/2>  
&#8211; <https://www.sgaf.de/content/vagcom-kabel-erkannt-412207>

GuzziDag: <http://www.von-der-salierburg.de/download/GuzziDiag/>

Other Software:  
<https://www.blafusel.de/obd/obd2_soft.html>

Other devices:  
<http://www.t4forum.de/wbb3/board19-technik-bereich/board120-umbauten-tuning/board8-tipps-und-tricks/173924-obd-diagnoseger√>§t-aber-welches/

&nbsp;

Next: get GPS Tracker.

Hope is to find my car, once it got stolen, but so far, it was more of a hack project :). I figured, the best opensource solution you currently get is traccar.org. Here&#8217;s how to set it up and dockerize: <https://www.traccar.org/docker/>

Alternatives:

<https://shop.autoskope.de/geraete/1/autoskope-v2-starterset>