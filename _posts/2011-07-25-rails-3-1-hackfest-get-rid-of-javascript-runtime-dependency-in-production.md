---
id: 584
title: Rails 3.1 Hackfest - get rid of Javascript Runtime dependency in production
date: '2011-07-25 00:42:54 +0000'
permalink: "/2011/07/25/rails-3-1-hackfest-get-rid-of-javascript-runtime-dependency-in-production/"
layout: post
categories:
- Ruby, Rails &amp; Co.
tags:
- Ruby, Rails &amp; Co.
- rails
- hackfest
comments: []
---
![](http://pragdave.pragprog.com/photos/uncategorized/2007/05/20/rails_logo_heart.png)

This weekend was [Rails 3.1 Hackfest](http://weblog.rubyonrails.org/2011/7/14/rails-3-1-hackfest). The rails community was called to test the upcoming version 3.1 to its limits, to find bugs and or flaws and get it polished for the final release. So I did:

I'm working with the rails 3.1 since it first release candidate, but never tried in production. So I made my task to finally test this, and bring my app in the wild - on my (not root) server. Rails 3.0 is running there smoothly so I didn't expect any problems - wrong!  
Show stopper was the Javascript Runtime dependency on production. Reason was quickly found: [Coffee-Script](http://jashkenas.github.com/coffee-script/) - ahrg! It depends on [ExecJS](https://github.com/sstephenson/execjs), which depends on a Javascript Runtime. Unfortunately, and that's because I'm not on a root server, I got neither node.js, therubyraser, Mustang nor Johnson installed there.

I read [this article](https://moocode.com/posts/1-deploying-a-rails-3-1-application-to-production), which supposed to precompile the assets - didn't help either and runtime is needed again.

In the End, the solution was as simple as obvious: just don't use coffee-script in production :-) I did, removed the coffee-script gem form my Gemfile - and tatatata: it works! Uhh! This took me quite a long time to get it right. Javascript Runtime dependecy no good for prodcution, and reading [Mr. Katz](http://yehudakatz.com/2011/06/14/what-the-hell-is-happening-to-rails/) it's looking good to get this fixed for the final release - uff! Happy so get tin final one soon! Yeah!

[cheesey image taken from [PragDave](http://pragdave.pragprog.com/pragdave/2007/05/rails_is_love.html) - thx]