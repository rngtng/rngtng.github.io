---
id: 338
title: How to sync my mp3 Songs rating in iTunes across multiple Libraries
date: 2009-11-24T17:21:26+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=338
permalink: /2009/11/24/how-to-sync-my-mp3-songs-rating-in-itunes-across-multiple-libraries/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - Happy Hacking
tags:
  - applescript
  - itunes
  - mp3
  - sync
---
By now, I havn&#8217;t find any good solution to share my mp3 across multiple systems and disks. I&#8217;ve some on my local machine, some at work and some on my external harddisk to archive. Luckily, when copying my tracks to another library duplicates are ignored. But what annoys me most is that my ratings don&#8217;t get copied, as iTunes doesn&#8217;t store it within the file. Some while ago I found a solution by storing the number of stars into the &#8216;Grouping&#8217; Field, so I can recover the rating afterwards. Now, I came up with this little applescript do automate the write and recover process. Just run this script, copy you mp3 to the other library, run the script again, and voilá, you ratings are back &#8211; nice!

[shell]  
(* small apple script to save rating into grouping field and  
vice versa. Perfect to persitent store your rating witin the file  
*)

tell application "iTunes"  
repeat with stars from 1 to 5  
set rating_value to stars * 20  
set group_name to "" & stars & " Stars"

set sel to (every track whose rating is rating_value and grouping is "")  
repeat with aTrack in sel  
tell aTrack  
set grouping to group_name  
end tell  
end repeat

set sel to (every track whose rating is 0 and grouping is group_name)  
repeat with aTrack in sel  
tell aTrack  
set rating to rating_value  
end tell  
end repeat  
end repeat  
end tell  
[/shell]

Btw. for each Star rating I do have a smart playlist which allows me to find those quickly.