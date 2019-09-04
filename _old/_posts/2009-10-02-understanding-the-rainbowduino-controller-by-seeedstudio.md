---
id: 188
title: Understanding the Rainbowduino Controller by Seeedstudio
date: 2009-10-02T19:33:04+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=188
permalink: /2009/10/02/understanding-the-rainbowduino-controller-by-seeedstudio/
syntaxhighlighter_encoded:
  - "1"
categories:
  - 'Arduino &amp; Co.'
tags:
  - Arduino
  - howto
  - RainbowDuino
  - seeedstudio
---
As you may know, I&#8217;ve orderd a [Rainbowduino from Seeedstudio](http://www.seeedstudio.com/blog/?page_id=187){.broken_link}. They delivered quite fast and I&#8217;m very happy of the price/quality/functionality ratio. In my opinion, the Rainbowduino is the cheapest ready-to-go 8&#215;8 RGB LED Controller Set at the moment &#8211; for just 43.4$ ( 19.90$ Board + 23.50$ Matrix) you are set for taking of!

My first tests went quite well. The Rainbowduino comes with a ready to use the program/[sketch](http://www.seeedstudio.com/depot/images/product/RaibowduinoCMD_Bata.rar){.broken_link} which allows you basic controls via I2C bus easily, like writing letters & lines in different color and light strength. But soon I hit the limits when it came so single control each LED to my will. So no doubt, I had to dig deeper in understanding how to control the Rainbowduino. Here a short summery of my results:

To understand how the Rainbowduino works, I kind of reverseengineered the sketch by seeedstudio which came with the controller. As usual for driving those Matrixes, [PWM](http://en.wikipedia.org/wiki/Pulse-width_modulation) is used as basic concept. This means the frame image is created row by row by high frequency, so human eye puts it all together to one single image.

To simplify this process I created the Rainbowduino.h Library, which comes with some nice methods to set frames and draw those to the Rainbowduino. It&#8217;s part of the mtXcontrol firmware an can be [downloaded from github](http://github.com/rngtng/mtXcontrol/tree/master/firmware/rainbowduino/){.broken_link}

<p style="text-align: center">
  <img class="aligncenter" src="http://www.seeedstudio.com/depot/images/product/rainbowblock.jpg" alt="" width="528" height="298" />
</p>

**How it works:**  
To tell rainbowduino which row to draw the method &#8216;open_row&#8217; is called. As each row is represented by a one output PIN, this method sets the according PIN to high, all others to low. Unfortunately the row pins are not all on one port: rows 1-3 are on PORTB Bit 1-3, rows 4-8 are on PORTD Bit 4-8. This makes the method kind of bit ugly 😉

After the row is selected, its time to set the pixels. One pixel consists of 3 LEDs: red, green & blue. Each LED has to be separately to high or low to mix the final color (e.g. red + green is yellow). First all blue values of a row are set, then red and finally green. This happens in serial on PORTC. First bit is the value input, second bit is clock, bit 3 the write mode bit and bit 4 to display the shifted value. Call the method &#8216;draw_row&#8217; to display a row. First parameter is the row number (0-7), second the intensity (1-16) and then the red, blue & green values for the row. e.g passing the color values 1,0,0 would light the first pixel red and all other off, where as 255, 255, 255 would light up all LED and all colors, to the full row would be white.

To store the row values the Library comes with a frame buffer for 10 frames. (That the amount of frames we can store to EEPROM without compression as well). You can pre fill the buffer and set the frame number to display. By calling draw() the frame of the current _frame number is drawn.

It makes sense to call this function by a timer interrupt to not disturb your actual program progress and to ensure it&#8217;s call in regular frequency to avoid different display colors.

To set up the timer, include this in your code:

[c]  
Rainbowduino rainbow = Rainbowduino(10); //max 10 Frames

void setup_timer() {  
TCCR2A = 0;  
TCCR2B = 1<<CS22 | 0 <<CS21 | 0<<CS20;  
TIMSK2 = 1<<TOIE2;  
TCNT2 = 0;  
sei();  
}

ISR(TIMER2\_OVF\_vect) {  
rainbow.draw();  
}  
[/c]

Now, just fill you frames with

[c]  
rainbow.set_frame(0, *data);  
[/c]

and your&#8217;re ready to go. Have fun!

First tests of the library with earlier version of [mtXcontrol](http://www.rngtng.com/mtXcontrol), an Editor to create images on the Matrix easily:  
<http://www.youtube.com/watch?v=MVj1YPzREKI>

Stay tuned for more examples soon&#8230;