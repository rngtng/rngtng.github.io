---
id: 127
title: 'Pimp my TextMate: how to speed up search & load'
date: '2009-06-18 11:41:38 +0000'
permalink: "/2009/06/18/pimp-my-textmate-how-to-speed-up-search-load/"
layout: post
categories:
- Happy Hacking
tags:
- hint
- search
- textmate
- speedup
- tweak
comments:
- id: 51
  author: Egze
  author_email: aleksandr@cligs.ee
  author_url: http://cligs.ee
  date: '2009-08-24 07:27:23 +0000'
  date_gmt: '2009-08-24 06:27:23 +0000'
  content: Or you can use the ACK Textmate Bundle that will own the native Textmate
    search any time of day ;) http://github.com/protocool/ack-tmbundle/tree/master
---
As a true Ruby on Rails developer you probably work with [TextMate](http://macromates.com/), as it's a plain, simple, but yet quite powerful editor. I love its open-file-by-pattern (?+T) or find-in-project (?+?+F) functions. But one thing which bothered me the most was the search time when working on big, large, massive projects. One easy tweak how to speed it up easily is to extend the file and folder exclude patterns. For example you don't need the _tmp_, _log_ or _vendor_ folder, nor any binary files within your editor. So I just excluded them, here are my new patterns (all in one line):

Files: (excluded all images,pdf & flash)  
[text]  
!(/\.(?!htaccess)[^/]\*|\.(png|jpg|pdf|swf)|\.(tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$  
[/text]

Folders: (exclude tmp tools vendor uploads lang locale po old_migrations script images upload custom_maps log)  
[text]  
!.\*/(\.[^/]\*|CVS|doc|tmp|tools|vendor|uploads|lang|locale|po|old_migrations|script|images  
|upload|custom_maps|log|_darcs|_MTN|\{arch\}|blib|.\*~\.nib|.\*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$  
[/text]

To change the settings go to  
[text]  
preferences -\> advanced -\> folder references  
[/text]

Yeah, now my search is quite fast again!