---
id: 318
title: 'Ruby: a nice way to get name of current method you''re in:'
date: '2009-11-16 17:39:52 +0000'
permalink: "/2009/11/16/ruby-a-nice-way-to-get-name-of-current-method-youre-in/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- Ruby, Rails & Co.
- Rails & Co.
- method
comments: []
---
This is a nice extension to get the name of the method you're currently in (Ruby \< 1.9)

[ruby]  
module Kernel  
 private  
 def this_method  
 caller[0] =~ /`([^']\*)'/ and $1  
 end  
end  
[/ruby]

for Ruby \>= 1.9 you can uses this:

[ruby]  
module Kernel  
 private  
 def this_method  
 __method__  
 end  
end  
[/ruby]

[see [Stack Over Flow](http://stackoverflow.com/questions/199527/get-the-name-of-the-currently-executing-method-in-ruby) as well]