---
id: 751
title: Running your own CardDav / CalDav Server
date: '2014-01-04 14:12:59 +0000'
permalink: "/2014/01/04/running-your-own-carddav-caldav-server/"
layout: post
categories:
- Happy Hacking
tags:
- ical
- caldav
- sync
- calendar
- carddav
- contacts
comments: []
---
![](http://www.roughlydrafted.com/wp-content/uploads/2007/10/rd-rdm.tech.q3.07-f6695fee-bf6a-40d7-ba49-8c11ffb3d4ae-files-ical-hero20070611.jpg)

For years I've been running my own CalDav/CardDav server to sync my Contacts, Calendars and Reminders across all my devices. I've been very happy with DAViCal, until recently, I had to switch to a simple vhost which doesn't offer PostgreSQL and custom apache cfgs. So I did some research which other implementations may be useful, those are most promising ones:

**Radicale (Python + Mysql)**  
<http://radicale.org>

**Baïkal (PHP + Mysql)**  
based on SabreDav  
<http://baikal-server.com>

**SabreDav (PHP + Mysql)**  
DAV Framework,  
<https://code.google.com/p/sabredav>

**DAViCal (PHP + PostgreSQL)**  
Very complete, but not that easy to install.  
<http://www.davical.org>

**Other:**  
Apple CalendarServer: <http://trac.calendarserver.org>

See full list:  
<http://caldav.calconnect.org/implementations/servers.html>