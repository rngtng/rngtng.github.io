---
id: 193
title: 'Extending Active Scaffold as_paperclip_bridge to delete &amp; update image/attachment'
date: 2009-08-13T16:53:35+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=193
permalink: /2009/08/13/extending-active-scaffold-as_paperclip_bridge-to-delete-update-imageattachment/
syntaxhighlighter_encoded:
  - "1"
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - active
  - attachment
  - bridge
  - file
  - github
  - 'on'
  - plugin
  - rails
  - 'Rails &amp; Co.'
  - ror
  - 'Ruby, Rails &amp; Co.'
  - Scaffold
---
As you know I&#8217;m quite fond of working with [Active Scaffold (AS)](http://activescaffold.com/){.broken_link} for data administration proposes. Quite recently we moved over to the RoR [paperclip attachment plugin](http://www.thoughtbot.com/projects/paperclip) for file upload handling. I was even more happy to see a Active Scaffold bridge which integrates paperclip smoothly into AS as well. It&#8217;s created by and hosted [here](http://github.com/mnaglik/as_paperclip_bridge/tree/master) on github.

Unfortunately it didn&#8217;t provide the possibility to delete or update an image once it&#8217;s assigned to an object. Well no problem, another fork of mine, some coding and now it possible. I basically reused to code of the as\_file\_column_bridge. Check it out here:  
<del datetime="2010-01-11T09:46:08+00:00"><a href="http://github.com/rngtng/as_paperclip_bridge/tree/master">http://github.com/rngtng/as_paperclip_bridge/tree/master</a></del>

**Update:** changes got merged into trunk, check it out:  
[http://github.com/mnaglik/as\_paperclip\_bridge/](http://github.com/mnaglik/as_paperclip_bridge/)