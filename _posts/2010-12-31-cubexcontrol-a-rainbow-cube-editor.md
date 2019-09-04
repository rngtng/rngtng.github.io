---
id: 501
title: cubeXcontrol - a Rainbow Cube Editor
date: '2010-12-31 15:35:15 +0000'
permalink: "/2010/12/31/cubexcontrol-a-rainbow-cube-editor/"
layout: post
categories:
- Arduino &amp; Co.
- Happy Hacking
tags:
- led
- Arduino
- seeedstudio
- RainbowDuino
- RainbowCube
- carnival
- '2010'
- cube
- RGB
comments:
- id: 616
  author: 'Seeedstudio Rainbowduino Carnival 2010: cubeXcontrol &#8211; a Rainbow
    Cube 3D Editor | WISH (Alpha)'
  author_email: ''
  author_url: http://wish.seeedstudio.com/?p=300
  date: '2011-01-04 12:51:11 +0000'
  date_gmt: '2011-01-04 10:51:11 +0000'
  content: "[...] Please read the release announcement on my blog: http://www.rngtng.com/2010/12/31/cubexcontrol-a-rainbow-cube-editor
    [...]"
- id: 628
  author: Ian
  author_email: rngng@isnoop.net
  author_url: http://isnoop.net
  date: '2011-01-19 09:29:11 +0000'
  date_gmt: '2011-01-19 07:29:11 +0000'
  content: Does this software support PWM?  If I build a bigger/smaller cube, can
    it be reconfigured for that size?
- id: 629
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-01-19 11:42:22 +0000'
  date_gmt: '2011-01-19 09:42:22 +0000'
  content: sure, all device specific stuff is capsulated in RainbowduinoDevice.pde
    and the Rainbowduino driver library. You could replace those by ur customized
    driver files without need to touch higher level functions..
- id: 673
  author: alparent
  author_email: bapccour@yahoo.ca
  author_url: ''
  date: '2011-03-05 21:35:59 +0000'
  date_gmt: '2011-03-05 19:35:59 +0000'
  content: "Can I use this great tools to control a simple red led 4x4x4 cube?\r\n\r\nI'm
    not a programmer so bare with me :o(\r\n\r\nIs there a exe of this tool?\r\n\r\nWill
    this generate a sketch that I can put on my Arduino?\r\n\r\nThanks"
- id: 682
  author: Michael
  author_email: iwontrespond2u@gmail.com
  author_url: ''
  date: '2011-03-23 16:46:13 +0000'
  date_gmt: '2011-03-23 14:46:13 +0000'
  content: "Hey, Just built this kit :  http://www.robotshop.com/programmable-4x4x4-rgb-led-mood-cube-kit-2.html\r\n\r\nAnd
    I was trying to use the cubexcontrol on it, but I think im missing something here.
    Is there a link to some instructions?  Im also on a Windows 7 32bit PC, I just
    dont understand how to get the program to read the cube and interact with each
    other."
- id: 694
  author: Ryan
  author_email: theoneandonlyryan@gmail.com
  author_url: ''
  date: '2011-04-06 11:25:03 +0000'
  date_gmt: '2011-04-06 09:25:03 +0000'
  content: So i feel really stupid, but where is the download on this site. I cant
    find the link to download the editor. Let me know thanks
- id: 698
  author: Jarom
  author_email: tremmer56@hotmail.com
  author_url: ''
  date: '2011-04-11 21:22:24 +0000'
  date_gmt: '2011-04-11 19:22:24 +0000'
  content: "Hey, I need some help, I just built this kit : http://www.robotshop.com/programmable-4x4x4-rgb-led-mood-cube-kit-2.html,
    and I'm trying to use the processing program with the cubexcontrol program, But
    everytime I go to run the program up pops up with the error codes below. I have
    downloaded the Rainbowduino Processing Library but I have not been able to figure
    out were it needs to go. Is there a link to some instructions? Im running Windows
    Vista  32 Bit. \r\n\r\nNo library found for picking\r\nNo library found for damkjer.ocd\r\nNo
    library found for themidibus\r\nNo library found for com.rngtng.launchpad\r\nNo
    library found for com.rngtng.rainbowduino"
- id: 717
  author: Michel Caldarola
  author_email: mcald@sympatico.ca
  author_url: ''
  date: '2011-05-27 02:10:15 +0000'
  date_gmt: '2011-05-27 00:10:15 +0000'
  content: "I just finish building the Rainbowduino Cube .\r\nI got the cubeXcontrol
    firmware uploaded to the rainbowduino, but when I start mtXcontrol.exe I get the
    message \" No output device found\" .\r\nI am using Windows XP\r\nRainbowduino
    with UartSBee."
- id: 721
  author: vince
  author_email: vinam@libero.it
  author_url: ''
  date: '2011-06-02 15:16:49 +0000'
  date_gmt: '2011-06-02 13:16:49 +0000'
  content: "I purchased the following kit:\r\n Rainbow Cube 4x4x4-RGB kit\r\n Rainbowduino
    LED driver platform \x96 Atmega 328\r\n UartSBee V3.1.\r\n After mounting ll cube,
    downloading the Arduino software and drivers, everything works bene.Volevo to
    help me get things working with cubeXcontrol \x96 Rainbow Cube Editor, why can
    not interface the software with the hardware is not contacted device and ican
    not to program Help?. Thanks"
- id: 726
  author: Al
  author_email: alinke@yahoo.com
  author_url: http://diymagicmirror.com
  date: '2011-06-14 00:21:18 +0000'
  date_gmt: '2011-06-13 22:21:18 +0000'
  content: "Hi, have the cube. Was able to get firmware version 2.1 installed on the
    Rainbowduino via UartSbee and also was able to get mtXcontrol running in Processing
    by getting the libraries files in the correct places. But when running mtXcontrol
    from Processing, get \"no output device found\". Tried various things (disabling
    firewall, tried on both 64-bit and 32-bit windows 7)  but no luck, any ideas?\r\n\r\nTo
    Jarom per your issue above: in your my documents there will be a directory called
    \"Processing\", in that directory, create a sub-directory called \"libraries\",
    and then under libraries, create another directory called \"mxTcontrol\", and
    place the library files there. Then things should run in Processing."
- id: 727
  author: rifki
  author_email: r.bastiawarman@gmail.com
  author_url: ''
  date: '2011-06-17 01:37:12 +0000'
  date_gmt: '2011-06-16 23:37:12 +0000'
  content: "hi,\r\ni have problem also. when i run CubeXControl, \"no device found\".
    my cube stay at white color.\r\n\r\ndo someone can solve it?\r\nthanks"
- id: 746
  author: Krolo
  author_email: krolo3@hotmail.com
  author_url: ''
  date: '2011-07-11 09:52:21 +0000'
  date_gmt: '2011-07-11 07:52:21 +0000'
  content: I finally got through all the errors of having all the files in the right
    tree structure and my cube lights up all white but the software does not recognize
    it. I bought the cube kit by seedstudio and it came with the uartbee usb programmer.
    I can upload programs to it using the atmega328 setting but when I try to upload
    the same program using the 168 setting it errors out and I think that is what
    i'm doing wrong but how do I get around that? I have tried this on windows 7 and
    linux with the same results. Any help would be greatly appreciated as the documentation
    is very scarce.
- id: 753
  author: Matt
  author_email: matt_is_the_greatest@hotmail.com
  author_url: ''
  date: '2011-07-30 04:13:19 +0000'
  date_gmt: '2011-07-30 02:13:19 +0000'
  content: "Hi Toby\r\nI'm really excited to get mtXcontrol to start working, do you
    have an .exe that works on windows 7? It won't compile in Processing for me either.\r\nLooks
    great!"
- id: 763
  author: Suddle D
  author_email: suddled@gmail.com
  author_url: ''
  date: '2011-08-16 23:35:37 +0000'
  date_gmt: '2011-08-16 21:35:37 +0000'
  content: "I am having problems like the other above me. I can upload the firmware
    to the Rainbowduino via a UartSBee and Audruino 022 software. My lights go basically
    white and I open the cubexcontrol program. But, it still says \"No Output device
    found, running in standalone mode.\" What can I do ti fix this problem and have
    the program recognize the Rainbowduino? \r\n\r\nAlso, is it possible to update
    the program to actuality create (write) the .PDE sketch file for uploading, so
    at least in offline mode we can still create and upload sketches for a 4x4x4 cube?
    I really want to make this work, I am bored of the generic \"Plasma\" pattern...."
- id: 784
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-08-17 16:53:14 +0000'
  date_gmt: '2011-08-17 14:53:14 +0000'
  content: Apparently the current Version doesn&rsquo;t work with Windows. I&rsquo;m
    very sorry for that, but at the moment I don&rsquo;t have any Win machine to test
    this. So please feel free to try yourself and fix it! Thx!
- id: 793
  author: sherman quan
  author_email: shermanq@pacbell.net
  author_url: ''
  date: '2011-09-02 02:17:35 +0000'
  date_gmt: '2011-09-02 00:17:35 +0000'
  content: "Any chance your mxt control will work successfully with the Seeedstudio
    LED cube on a mac and a pc anytime in the future.  \r\n\r\nYou have a great implementation.
    \ It would motivate others to add to it (sound and sensing indicators)"
- id: 796
  author: ortsac
  author_email: ortsac@pacbell.net
  author_url: ''
  date: '2011-09-04 19:35:14 +0000'
  date_gmt: '2011-09-04 17:35:14 +0000'
  content: Next time don't publish your work if it is not working at all....I had
    the same problem with mtXcontrol on the Rainbowduino RGB Matrix. Seedstudio is
    just making money off of everyone buying the Raibowduino kit or the 4X4X4 Cubeduino
    kit when they cannot provide a fully functional open source driver. If you buy
    either of them, you'll just be looking at a boring "plasma" display with no real
    world application, to do that you will have to do a lot of programming on your
    own.
- id: 797
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-09-05 10:56:08 +0000'
  date_gmt: '2011-09-05 08:56:08 +0000'
  content: Next time don't write comment if you didn't read full thread. It's indeed
    working but apparently not on Windows (which I can't test &amp; verify). I agree
    mtXcontrol and cubeXcontrol are still work in progress ('beta' mode) and therefor
    not 100% enduser (luser) friendly. But source is fully open on github. So get
    yourself some processing and arduino knowledge, start reading code and fix stuff.
    'cause thats where fun begins..  complain to you mama!
- id: 886
  author: Max Corona
  author_email: contacto@maxcorona.net
  author_url: http://www.maxcorona.net
  date: '2011-12-14 10:03:02 +0000'
  date_gmt: '2011-12-14 08:03:02 +0000'
  content: Same problem here with mtxcontrol ... so, after uploading the firmware
    (this step seems to be fine because i see all the LEDs in white), should i just
    open processing (with no sketch in it) and then double click on mtxcontrol.exe?
    LEDs turn off for a second and then on again. and says NO OUTPUT DEVICE FOUND.
    Or, should i open with processing the mtxcontrol.pde that is inside "source" directory?
    that asks me to create a folder and starts asking me for more files... Please
    help i have been stuck with this for months and i still have hope.. Thank you
- id: 1099
  author: genafk
  author_email: genafk@gmail.com
  author_url: ''
  date: '2012-05-15 03:35:44 +0000'
  date_gmt: '2012-05-15 02:35:44 +0000'
  content: my mtxcontrol also says it cannot find the device, need to try and fix
    this somehow but i cannot write code for nuts unless it;s very simple.
- id: 1672
  author: anew
  author_email: anghuijuan92@gmail.com
  author_url: ''
  date: '2013-02-05 03:12:56 +0000'
  date_gmt: '2013-02-05 02:12:56 +0000'
  content: |-
    Hi i am doing the rainbow cube from rainbowduino on C++ programming. the link for the rainbow cube that i am doing is http://seeedstudio.com/wiki/Rainbow_Cube. the programming codes that i have error on is on cube 2. the error is avrdude: stk500_getsync(): not in sync: resp=0x00
    avrdude: stk500_disable(): protocol error, expect=0x14, resp=0x51.
- id: 5479
  author: Rainbowduino LED Driver Platform &#8211; Atmega328 &middot; WWW.INFOWEBHUB.NET
  author_email: ''
  author_url: http://www.infowebhub.net/rainbowduino-led-driver-platform-atmega328/
  date: '2013-09-10 23:19:51 +0000'
  date_gmt: '2013-09-10 22:19:51 +0000'
  content: "[...] cubeXcontrol &ndash; a Rainbow Cube Editor | uRaNGaTaNG [...]"
- id: 11701
  author: cube world crack
  author_email: jeff-blanch@gmx.de
  author_url: http://www.youtube.com/watch?v=N2AL8nYtuTo
  date: '2014-01-08 04:28:08 +0000'
  date_gmt: '2014-01-08 03:28:08 +0000'
  content: "Downloading Cube world usually costs funds. I will offer you Cube Entire
    world total variation which you can down load here for cost-free.\r\nIndeed you
    will be in a position to perform Dice Entire world in a number \r\nof minutes
    below for free of charge, all you \r\nhave to do is down load Cube Globe with
    the hyperlink offered right here.\r\nWe incorporated Dice Planet crack so after
    you set up Dice \r\nGlobe Alpha, you can engage in it quickly. Dice World is a
    3D action RPG sort game that is manufactured/developed by Wollay and his wife.\r\nDice
    Entire world was started out in June 2011 \r\nand now, the Alpha edition is out
    previously."
- id: 54451
  author: Cheikh Diouf
  author_email: cdioufquincy@gmail.com
  author_url: ''
  date: '2014-05-04 07:57:15 +0000'
  date_gmt: '2014-05-04 06:57:15 +0000'
  content: "Hi . \r\n\r\nI am not programmer , but I can soldering ,and am interest
    in purchase one led cube RGB 4-4-4-4, with program if you can help !!!\r\n I want
    to Learn the cube X control ( cool video ) showing 3D model of the cube . \r\nThanks
    ."
---
![](http://www.rngtng.com/files/2010/12/cube.jpg)

**UPDATE:**  
[Please express your Love and vote for **cubeXControl** here - Thanks!](http://www.seeedstudio.com/blog/2011/01/14/rainbowduino-carnival-2010-vote-now/)

**UPDATE2:**  
Apparently the current Version doesn't work with Windows. I'm very sorry for that, but at the moment I don't have any Win machine to test this. So please feel free to try yourself and fix it! Thx!

I'm proud to present a first version which was on my this years TODO list for so long, but due to all the changes therefore very less time never got startet. But thanks to the [Seeedstudio Rainbowduino Carnival 2010](http://www.seeedstudio.com/blog/2010/10/28/rainbowduino-carnival-2010-launched/) I got a big motivation boost and found some time to get my fingers dirty again. So check this out, my this years contribution for the carnival:

cubeXcontrol - a Rainbow Cube Editor

Well, you know the [mtXcontrol](http://www.rngtng.com/mtXcontrol), the Rainbowduino Editor and the awesome [Seeedstudio Rainbow Cube](http://www.seeedstudio.com/depot/rainbow-cube-kit-rgb-4x4x4-rainbowduino-compatible-p-596.html) I [mentioned](http://www.rngtng.com/2010/03/08/rainbow-cube-here-it-is/) here ?&nbsp;Now it's time &nbsp;to bring them together:

<http://vimeo.com/18300458>

cubeXcontrol is an editor to control and create patterns for the 4x4x4 RGB Rainbow Cube powered by a rainbowduino. It comes with an extra window showing a 3D model of the Cube, allowing to rotate in all directions and to zoom. Click on boxes to set the LED color easily.

The editor is of course heavily based on the latest mtXcontrol version, with the latest rainbowduino firmware. Both are unfortunately still in [beta stage](http://www.rngtng.com/2010/09/05/mtxcontrol-sneak-preview-rainbowduino-beta-library-master-and-slave/), but come with great new features like auto port detection.

Get the sources here:  
 <https://github.com/rngtng/mtXcontrol/tree/cubeXcontrol>

And the Rainbowduino driver:  
 <https://github.com/rngtng/rainbowduino/tree/master_slave>

Happy cub'ing!