---
id: 5
title: 'Beautify your views using &#8220;return&#8221;'
date: 2008-06-06T10:59:24+01:00
author: admin
layout: post
guid: http://urangatang.wordpress.com/?p=6
permalink: /2008/06/06/beautify-your-views-with-using-return/
syntaxhighlighter_encoded:
  - "1"
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - beauty of code
  - hint
  - return
  - view
---
A nice way to keep your views clean and not to spoil them with condition clauses, is to use the &#8216;return&#8217; statement like you would do in a method:

Take this very simple exmaple:

ugly:  
[ruby]  
unless @place  
<%= @place.name %>  
end  
[/ruby]

nice:  
[ruby]  
return if @place.nil?  
<%= @place.name %>  
[/ruby]

**UPDATE:**  
There&#8217;s one pitfall, I forgot to mention: Every outout BEFORE the return statement will be discarded, so this part:  
[ruby]  
<%= "Always display this sentence" %>  
return if @place.nil?  
<%= @place.name %>  
[/ruby]

Will result in an empty output as well. This is quite a pitty and I&#8217;m not sure if it&#8217;s a bug or feature. A may raise it soon..