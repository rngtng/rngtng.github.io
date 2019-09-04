---
id: 562
title: 'HowTo: resque-web, resque scheduler and passenger'
date: 2011-07-29T18:04:59+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=562
permalink: /2011/07/29/howto-resque-web-resque-scheduler-and-passenger/
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - howto
  - passenger
  - resque
  - scheduler
---
Here&#8217;s how you get [resque-web](https://github.com/defunkt/resque) and [resque scheduler](https://github.com/bvandenbos/resque-scheduler) playing well with [passenger](http://www.modrails.com/){.broken_link}:

Follow these instructions from resque readme ([apache](http://www.modrails.com/documentation/Users%20guide%20Apache.html#_deploying_a_rack_based_ruby_application){.broken_link}, [ngnix](http://www.modrails.com/documentation/Users%20guide%20Nginx.html#deploying_a_rack_app){.broken_link}) and check out current resque repo. Now update following two files:  
1. Add `gem "resque-scheduler","2.0.0.d"` to Gemfile  
2. Run `bundle`  
3. Add `require 'resque_scheduler'` to config.ru

Restart you webserver and are ready to go &#8211; Happy scheduling!

Both file after editing:  
[gist id=1101580]