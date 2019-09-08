---
id: 102
title: 'My first GitHub fork: bounce-email'
date: 2009-06-05T13:40:12+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=102
permalink: /2009/06/05/my-first-github-fork-bounce-email/
syntaxhighlighter_encoded:
  - "1"
categories:
  - 'Ruby, Rails & Co.'
tags:
  - bounce
  - email
  - fork
  - github
  - patch
  - 'Rails & Co.'
  - 'Ruby, Rails & Co.'
  - tmail
---
Hurray! I finally forked a github project. Yesterday I ran into the [bounce-email gem](http://rubyforge.org/projects/bounce-email/){.broken_link} by Agris Ameriks on Rubyforge. It&#8217;s basically a 1:1 port of the [PHP Bounce Handler class](http://www.phpclasses.org/browse/package/2691.html)by Chris Fortune and not very rubyified. Thanks to David Reese, [bounce-email is forked on github](http://github.com/whatcould/bounce-email/tree/master) and I could easily extend it.

I rubyfied the class, did some code cleanup, added (yet a very simple) way to get the original message, and gained some performance by paring message only on demand. A testcase was broken as well the Rakefile, both are fixed. See the update here:  
<http://github.com/rngtng/bounce-email/tree/master>{.broken_link}