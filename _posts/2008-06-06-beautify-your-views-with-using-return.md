---
id: 5
title: Beautify your views using "return"
date: '2008-06-06 10:59:24 +0000'
permalink: "/2008/06/06/beautify-your-views-with-using-return/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- view
- beauty of code
- hint
- return
comments: []
---
A nice way to keep your views clean and not to spoil them with condition clauses, is to use the 'return' statement like you would do in a method:

Take this very simple exmaple:

ugly:  
[ruby]  
unless @place  
  
end  
[/ruby]

nice:  
[ruby]  
return if @place.nil?  
  
[/ruby]

**UPDATE:**  
There's one pitfall, I forgot to mention: Every outout BEFORE the return statement will be discarded, so this part:  
[ruby]  
  
return if @place.nil?  
  
[/ruby]

Will result in an empty output as well. This is quite a pitty and I'm not sure if it's a bug or feature. A may raise it soon..