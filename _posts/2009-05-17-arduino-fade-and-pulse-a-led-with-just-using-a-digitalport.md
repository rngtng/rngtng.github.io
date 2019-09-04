---
id: 90
title: 'Arduino: Fade and pulse a LED with just using a DigitalPort'
date: 2009-05-17T14:40:45+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=90
permalink: /2009/05/17/arduino-fade-and-pulse-a-led-with-just-using-a-digitalport/
syntaxhighlighter_encoded:
  - "1"
openid_comments:
  - 'a:1:{i:0;i:1569;}'
categories:
  - 'Arduino &amp; Co.'
tags:
  - 'Arduino &amp; Co.'
  - dimm
  - fade
  - led
---
This is a nice experiment I did to fade and pulse a LED by just using a _digital_ port. Digital? On/Off, 1/0 &#8211; how can this work? Well it does, check this out:

[youtube]<http://www.youtube.com/watch?v=kB62BrQBjTg[/youtube]>

The key is, I&#8217;m switching the LED on & off very fast which appears the human eye as it&#8217;s on all the time (similar to a LED Matrix). Now, I change the time period between switching the LED on and off. Is the off period time longer, the LED lights low, is the off period time short, the LED lights high. Fading the period time, makes the LED pulse&#8230; nice!

Check this (still quite ugly) code:  
[c]  
int ledPin = 13; // LED connected to digital pin 13  
int value = LOW; // previous value of the LED  
long cnt = 0; // will store last time LED was updated  
long low = 0; // interval at which to blink (milliseconds)  
long high = 1000; // interval at which to blink (milliseconds)  
int op = 3;  
long a = 0;

void setup()  
{  
pinMode(ledPin, OUTPUT); // sets the digital pin as output  
}

void loop()  
{  
a += op;  
blinkl( a+30, 10 );  
if( a > 200 || a < 0 ) op *= -1;  
}

void blinkl(long low, long high )  
{  
int c = 5;  
while ( c > 0 ) {  
blink( low, high );  
c-=1;  
}  
}

void blink( long low, long high )  
{  
long period = 4000;  
long pt = period * high / (low + high );  
int value = LOW;  
digitalWrite(ledPin, value);

while( period > 0 ) {  
if (period < pt && value == LOW ) {  
value = HIGH;  
digitalWrite(ledPin, value);  
}  
period -= 1;  
}  
}  
[/c]