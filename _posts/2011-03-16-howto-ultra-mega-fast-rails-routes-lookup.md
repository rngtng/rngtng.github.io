---
id: 538
title: 'HowTo: ultra mega fast rails routes lookup '
date: '2011-03-16 18:34:00 +0000'
permalink: "/2011/03/16/howto-ultra-mega-fast-rails-routes-lookup/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- howto
- Ruby, Rails & Co.
- ruby on rails
- rails
- routes
- shell
- alias
- caching
- script
- bash
comments: []
---
![](http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/8/5/1249508265579/Frances-V150-TGV-fast-tra-001.jpg)

I was quite annoyed by the wasted time it took each time I grep the rails routes table.  
_Wait, can't this be cached? - Sure it can!_  
So I came up this nice little alias to cache the output once:  
`
alias route='CF=tmp/routes_cache; [[! -s $CF]] && rake routes > $CF; cat $CF | grep '
`

now it's ultra fast, try e.g.:  
`
$ route root
`  
bang!