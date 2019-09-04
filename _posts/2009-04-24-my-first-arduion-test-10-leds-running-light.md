---
id: 73
title: 'My first Arduion test: 10 LEDs running light'
date: '2009-04-24 20:05:19 +0000'
permalink: "/2009/04/24/my-first-arduion-test-10-leds-running-light/"
layout: post
categories:
- Arduino &amp; Co.
tags:
- Arduino &amp; Co.
- running
- light
- led
- buton
- interrupt
comments:
- id: 3129
  author: Matthew
  author_email: matt@thedrovers.ca
  author_url: ''
  date: '2013-06-29 21:51:27 +0000'
  date_gmt: '2013-06-29 20:51:27 +0000'
  content: "Hi, are the led's powered by the arduino? If so, how much power are you
    supplying the arduino?\r\n\r\nAlso, do you have any resistors between the led's
    and the arduino ?\r\n\r\nThanks.\r\n\r\n-Matt"
---
Check this out:  
<http://www.youtube.com/watch?v=irVW4U8zq_k>

That my first proper Arduino test, controlling a 10 LED running light. I attached a small button via interrupt as well to start & stop the light. More to come soon, stay tuned!

Here the (very,very ugly) source code:

[c]  
int ledPin = 3; // First LED connected to digital pin 13  
volatile int stop = LOW;

void setup()  
{  
 Serial.begin(38400);  
 for( int i = 0; i \< 10; i++) {  
 pinMode(ledPin + i, OUTPUT);  
 }  
 attachInterrupt(0, stopit, RISING); //Button attached to Pin 2  
}

int i = 0;  
void loop()  
{  
 for( i = 0; i \< 7 && !stop; i++) {  
 blink(ledPin + i);  
 }  
 for( i; i \>= 1 && !stop; i--) {  
 blink(ledPin + i);  
 }  
 for( i = 0; i \< 10 && !stop; i++) {  
 blink(ledPin + i);  
 }  
 for( i; i \>= 3 && !stop; i--) {  
 blink(ledPin + i);  
 }  
 for( i; i \< 10 && !stop; i++) {  
 blink(ledPin + i);  
 }  
 for( i = 9; i \>= 1 && !stop; i--) {  
 blink(ledPin + i);  
 }  
}

void stopit()  
{  
 delayMicroseconds(1000);  
 stop = !stop;  
}

void blink( int pin ) {  
 digitalWrite(pin, HIGH);  
 delay(120 - abs( pin - 8 ) \* 20);  
 digitalWrite(pin, LOW);  
}  
[/c]