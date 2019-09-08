---
id: 14
title: 'Love ActiveScaffold: Show always Searchbox'
date: 2008-10-05T13:34:01+01:00
author: admin
layout: post
guid: http://urangatang.wordpress.com/?p=26
permalink: /2008/10/05/love-activescaffold-show-always-seachbox/
syntaxhighlighter_encoded:
  - "1"
categories:
  - 'Ruby, Rails & Co.'
tags:
  - active
  - hack
  - Scaffold
  - search
---
[ActiveScaffold](http://activescaffold.com/){.broken_link} is a great plugin to build edit form easily. Nicely AJAX and nested forms support (well with limits ;-). One thing which bugged me all the time, was the extra click you had to do to show the searchbox. Well I solved it like this:

[ruby]  
def index  
active\_scaffold\_config.list.label += render\_to\_string( :action => :search, :layout => false )  
super  
end  
[/ruby]

I know, it&#8217;s kind of bad hack, as the label actually isn&#8217;t supposed to contain a form &#8211; but it works out quite well!