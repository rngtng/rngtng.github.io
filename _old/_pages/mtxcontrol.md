---
id: 235
title: mtXcontrol
date: 2009-10-06T00:44:07+01:00
author: tobi
layout: page
guid: http://www.rngtng.com/?page_id=235
syntaxhighlighter_encoded:
  - "1"
---
**Update:**  
_This project is a contribution for the [seeedstudio carnival 2009](http://www.seeedstudio.com/forum/viewtopic.php?f=11&t=397) and **[won the first price!](http://www.seeedstudio.com/forum/viewtopic.php?f=11&t=472)**_ 

<p style="text-align: center">
  <img class="size-full wp-image-238 aligncenter" src="http://www.rngtng.com/files/2009/10/mtxcontrol.png" alt="mtxcontrol" width="502" height="476" srcset="http://www.rngtng.com/files/2009/10/mtxcontrol.png 784w, http://www.rngtng.com/files/2009/10/mtxcontrol-300x284.png 300w" sizes="(max-width: 502px) 100vw, 502px" />
</p>

**&#8211; a LED Matrix Editor &#8211;**  
**mtXcontrol** is an editor written in Processing to easily create image sequences for several output devices containing multicolor LED matrix. By now, the [Rainbowduino controller](http://www.seeedstudio.com/depot/rainbowduino-led-driver-platform-plug-and-shine-p-371.html) and the  
[Novation Launchpad](http://www.novationmusic.com/products/launchpad){.broken_link} are supported. Its generic API allows to add other in- and output devices easily.

**mtXcontrol** Editor auto detects and connects to your device. Once connected, you can draw points, lines & rows in different colors, create multiple frames and manipulate them. Add, delete, move, fill, copy & paste of frames is supported. Play all frames by different speed, realtime update the device and save your work as image file. If supported (e.g. Rainbowduino), update the sequence on your device and run it standalone. One special feature is typing letters and numbers. Future versions aim to support multiple devices, different color depth and many more.

Check out this short demo video:

<http://www.vimeo.com/6924030>

**Download mtXControl from github:**  
[Binaries for Windows, Linux and Mac OS X](http://github.com/rngtng/mtXcontrol/downloads)  
[sources files](http://github.com/rngtng/mtXcontrol)

**Launchpad HowTo:**  
Plug your Launchpad and start mtXcontrol. The device is auto detected &#8211; start drawing and pushing buttons!!

**Rainbowudino HowTo:**  
To use your Rainbowduino with mtXcontrol you have to upload the Firmware to your rainbowduino first. [See instruction here](/2009/06/25/rainbowduino-here-it-is-and-how-to-program-it/). The firmware makes use of the Rainbowduino.h Library to manipulate the Matrix easily. Make sure to put it into your Arduino Library. Connect your Rainbowduino via USB to your computer, upload firmware and you are ready to go &#8211; happy mtXcontrol drawing!

[Find a detailed Step-By-Step instruction here!](http://www.seeedstudio.com/forum/viewtopic.php?f=11&t=435&start=10)

**Small list of Features:**  
* multiple Device support including auto detection  
* Draw multicolor points, line and rows (4bit color support)  
\* Add, delete, clear, fill, \*copy & paste*, move frames  
\* \*Draw letters and numbers*, Font configureable  
\* Save to & load from \*Bitmap file*  
* Frame preview, easily navigate through  
* Keyboard shortcut for each function  
Rainbowduino related:  
* Standalone Mode or realtime Update  
\* Upload and Download to Matrix \*EEPROM* (mind: due to 256kb memory only up to 10 frames).  
Launchpad related:  
* full input support to choose color, frame & pixel

**Keyboard shortcuts:**  
* ENTER &#8211; switch between record/play Mode  
* left/right ARROW &#8211; Frame forward/backward (Record Mode) or Speed (Play Mode)  
* SPACE &#8211; Insert Frame after current Frame  
* D &#8211; Delete Frame  
* X &#8211; Clear frame  
* F &#8211; fill frame  
* C &#8211; select next color

* command+S &#8211; Save to File (Bitmap)  
* command+L &#8211; Load File (Bitmap OR text (.mtx))  
* command+C &#8211; Copy Frame  
* command+V &#8211; Paste Frame  
* ctrl+LETTER &#8211; Insert this Letter/Number  
* ctrl+left/right ARROW &#8211; Move Frame in direction

Rainbowduino:  
* alt+ENTER &#8211; connect/disconnect  
* alt+left/right ARROW &#8211; Adjust speed  
* alt+ctrl+left/right ARROW &#8211; Adjust brightness  
* alt+L &#8211; load from EEPROM  
* alt+S &#8211; save to EEPROM

Launchpad top Buttons:  
* Arrow up &#8211; new frame  
* Arrow down &#8211; delete frame  
* Arrow left &#8211; previous frame  
* Arrow right &#8211; next frame  
* Session &#8211; copy frame  
* User1 &#8211; insert frame  
* User2 &#8211; color preview, hold to select  
* Mixer &#8211; switch between record/play Mode

Right Buttons are turn into color chooser when User2 pressed. Blinking button indicates selected color, e.g. full red + full green = yellow. Pushing grid button selects color of pushed button.

Please see [README](http://github.com/rngtng/mtXcontrol/blob/master/README.markdown) for more.