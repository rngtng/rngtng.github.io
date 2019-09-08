---
id: 490
title: AppleScript to create keyboard shortcuts
date: 2010-10-29T11:38:47+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=490
permalink: /2010/10/29/applescript-to-create-keyboard-shortcuts/
categories:
  - Happy Hacking
tags:
  - applescript
  - automation
  - keyboard
  - Mac OS X
  - setup
  - shortcut
  - system
---
Last week my company laptop got stolen, so I had to setup my system again using this [list](http://www.rngtng.com/2010/04/27/my-snow-leopard-development-system-ruby-rails-arduino-co/). The positive part of each new system setup is you think more and more how to automate your setup..

This time I was really annoyed with setting up keyboard shortcuts, so I came up with this little AppleScript which does the work:

[gist id=652031 file=create_shortcuts.scpt]

The key is &#8216;GUI scripting&#8217; &#8211; a specify way of AppleScript to simulate clicks, keystrokes etc. for \*any\* (native?) App. You only have to know the ids of the GUI elements which you can get with this very nice tool:  
-> <http://pfiddlesoft.com/uibrowser>

Good source to start your Mac Os X Automation is:  
-> <http://www.macosxautomation.com>