---
id: 562
title: 'HowTo: resque-web, resque scheduler and passenger'
date: '2011-07-29 18:04:59 +0000'
permalink: "/2011/07/29/howto-resque-web-resque-scheduler-and-passenger/"
layout: post
categories:
- Ruby, Rails &amp; Co.
tags:
- howto
- resque
- scheduler
- passenger
comments: []
---
Here's how you get [resque-web](https://github.com/defunkt/resque) and [resque scheduler](https://github.com/bvandenbos/resque-scheduler) playing well with [passenger](http://www.modrails.com/):

Follow these instructions from resque readme ([apache](http://www.modrails.com/documentation/Users%20guide%20Apache.html#_deploying_a_rack_based_ruby_application), [ngnix](http://www.modrails.com/documentation/Users%20guide%20Nginx.html#deploying_a_rack_app)) and check out current resque repo. Now update following two files:  
1. Add `gem "resque-scheduler","2.0.0.d"` to Gemfile  
2. Run `bundle`  
3. Add `require 'resque_scheduler'` to config.ru

Restart you webserver and are ready to go - Happy scheduling!

Both file after editing:  
[gist id=1101580]