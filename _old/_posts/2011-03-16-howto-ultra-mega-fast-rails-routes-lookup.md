---
id: 538
title: 'HowTo: ultra mega fast rails routes lookup'
date: 2011-03-16T18:34:00+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=538
permalink: /2011/03/16/howto-ultra-mega-fast-rails-routes-lookup/
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - alias
  - bash
  - caching
  - howto
  - rails
  - routes
  - ruby on rails
  - 'Ruby, Rails &amp; Co.'
  - script
  - shell
---
<img class="aligncenter" src="http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/8/5/1249508265579/Frances-V150-TGV-fast-tra-001.jpg" alt="" />

I was quite annoyed by the wasted time it took each time I grep the rails routes table.  
_Wait, can&#8217;t this be cached? &#8211; Sure it can!_  
So I came up this nice little alias to cache the output once:  
`<br />
alias route='CF=tmp/routes_cache; [[ ! -s $CF ]] && rake routes > $CF; cat $CF | grep '<br />
` 

now it&#8217;s ultra fast, try e.g.:  
`<br />
$ route root<br />
`  
bang!