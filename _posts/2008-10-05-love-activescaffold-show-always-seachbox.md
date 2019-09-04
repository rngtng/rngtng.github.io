---
id: 14
title: 'Love ActiveScaffold: Show always Searchbox'
date: '2008-10-05 13:34:01 +0000'
permalink: "/2008/10/05/love-activescaffold-show-always-seachbox/"
layout: post
categories:
- Ruby, Rails &amp; Co.
tags:
- active
- Scaffold
- search
- hack
comments: []
---
[ActiveScaffold](http://activescaffold.com/) is a great plugin to build edit form easily. Nicely AJAX and nested forms support (well with limits ;-). One thing which bugged me all the time, was the extra click you had to do to show the searchbox. Well I solved it like this:

[ruby]  
 def index  
 active_scaffold_config.list.label += render_to_string( :action =\> :search, :layout =\> false )  
 super  
 end  
[/ruby]

I know, it's kind of bad hack, as the label actually isn't supposed to contain a form - but it works out quite well!