---
id: 318
title: 'Ruby: a nice way to get name of current method you&#8217;re in:'
date: 2009-11-16T17:39:52+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=318
permalink: /2009/11/16/ruby-a-nice-way-to-get-name-of-current-method-youre-in/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - method
  - 'Rails &amp; Co.'
  - 'Ruby, Rails &amp; Co.'
---
This is a nice extension to get the name of the method you&#8217;re currently in (Ruby < 1.9)

[ruby]  
module Kernel  
private  
def this_method  
caller[0] =~ /\`([^&#8217;]*)&#8217;/ and $1  
end  
end  
[/ruby]

for Ruby >= 1.9 you can uses this:

[ruby]  
module Kernel  
private  
def this_method  
\_\_method\_\_  
end  
end  
[/ruby]

[see [Stack Over Flow](http://stackoverflow.com/questions/199527/get-the-name-of-the-currently-executing-method-in-ruby) as well]