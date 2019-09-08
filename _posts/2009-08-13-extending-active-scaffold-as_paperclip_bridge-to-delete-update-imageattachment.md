---
id: 193
title: Extending Active Scaffold as_paperclip_bridge to delete & update image/attachment
date: '2009-08-13 16:53:35 +0000'
permalink: "/2009/08/13/extending-active-scaffold-as_paperclip_bridge-to-delete-update-imageattachment/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- active
- Scaffold
- Ruby, Rails & Co.
- plugin
- github
- Rails & Co.
- ror
- bridge
- file
- attachment
- 'on'
- rails
comments:
- id: 49
  author: xxx
  author_email: hebrew@boss.bg
  author_url: ''
  date: '2009-08-22 13:35:56 +0000'
  date_gmt: '2009-08-22 12:35:56 +0000'
  content: "Thanks for the enhancement.\r\nCan you add how to get thumbnal image in
    AS list template instead of file link?"
- id: 50
  author: xxx
  author_email: hebrew@boss.bg
  author_url: ''
  date: '2009-08-22 13:46:35 +0000'
  date_gmt: '2009-08-22 12:46:35 +0000'
  content: "I figured out that if you have :thumbnail in model:\r\nhas_attached_file
    :flag, :styles => { :medium => \"198x280>\", :thumbnail => \"119x168>\" }\r\nyou
    have the image instead of link.\r\n\r\nIt probably comes from line 25 in as_papeclip_bridge.rb\r\nself.columns[field].list_ui
    ||= self.model.attachment_definitions[field][:styles].include?(:thumbnail) ? :paperclip_thumb
    : :paperclip_link"
- id: 408
  author: jet
  author_email: jet@whidbey.com
  author_url: ''
  date: '2010-01-10 23:10:12 +0000'
  date_gmt: '2010-01-10 21:10:12 +0000'
  content: "Link to your fixed as_paperclip_bridge, \r\n\r\nhttp://github.com/rngtng/as_paperclip_bridge/tree/master\r\n\r\n\r\nis
    broken.\r\n\r\njet"
- id: 411
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2010-01-11 10:46:02 +0000'
  date_gmt: '2010-01-11 09:46:02 +0000'
  content: "true, thx, my changes got merged into main repository trunk, please check
    out instead: \n\nhttp://github.com/mnaglik/as_paperclip_bridge/"
---
As you know I'm quite fond of working with [Active Scaffold (AS)](http://activescaffold.com/) for data administration proposes. Quite recently we moved over to the RoR [paperclip attachment plugin](http://www.thoughtbot.com/projects/paperclip) for file upload handling. I was even more happy to see a Active Scaffold bridge which integrates paperclip smoothly into AS as well. It's created by and hosted [here](http://github.com/mnaglik/as_paperclip_bridge/tree/master) on github.

Unfortunately it didn't provide the possibility to delete or update an image once it's assigned to an object. Well no problem, another fork of mine, some coding and now it possible. I basically reused to code of the as_file_column_bridge. Check it out here:  
<http://github.com/rngtng/as_paperclip_bridge/tree/master>

**Update:** changes got merged into trunk, check it out:  
<http://github.com/mnaglik/as_paperclip_bridge/>