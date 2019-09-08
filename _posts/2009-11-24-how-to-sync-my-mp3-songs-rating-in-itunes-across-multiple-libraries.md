---
id: 338
title: How to sync my mp3 Songs rating in iTunes across multiple Libraries
date: '2009-11-24 17:21:26 +0000'
permalink: "/2009/11/24/how-to-sync-my-mp3-songs-rating-in-itunes-across-multiple-libraries/"
layout: post
categories:
- Happy Hacking
tags:
- applescript
- itunes
- mp3
- sync
comments:
- id: 466
  author: David
  author_email: davidio@yahoo.com
  author_url: ''
  date: '2010-03-06 20:23:34 +0000'
  date_gmt: '2010-03-06 18:23:34 +0000'
  content: "I tried your method but applescript stops and  gives me an error that
    it expected end of line but found an unknown token at the first semi-colon on
    the line: \r\nset group_name to \"\" & stars & \" Stars\"\r\n\r\nAny thoughts
    on how to fix that or why I'm getting that error?  Otherwise, this seems like
    a great way to deal with this problem, which has annoyed me forever.  Thanks!"
- id: 467
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2010-03-06 20:36:35 +0000'
  date_gmt: '2010-03-06 18:36:35 +0000'
  content: Hey David, ok this was an HTML encoding error, I fixed it. Use just the
    ampersand (&amp;) instead of &amp;
- id: 468
  author: David
  author_email: davidio@yahoo.com
  author_url: ''
  date: '2010-03-07 04:24:33 +0000'
  date_gmt: '2010-03-07 02:24:33 +0000'
  content: Thanks, worked perfectly.  Great idea, I don't know why no one had thought
    of this before.
- id: 469
  author: David
  author_email: davidio@yahoo.com
  author_url: ''
  date: '2010-03-07 10:00:35 +0000'
  date_gmt: '2010-03-07 08:00:35 +0000'
  content: "Oops, it actually didn't work.  It times out with the following error
    message:\r\n\r\nerror \"iTunes got an error: AppleEvent timed out.\" number -1712\r\n\r\n\r\nAny
    ideas?"
- id: 470
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2010-03-08 16:00:56 +0000'
  date_gmt: '2010-03-08 14:00:56 +0000'
  content: hm strange, how many files does your itunes have?
- id: 471
  author: David
  author_email: djh@none.com
  author_url: ''
  date: '2010-03-10 07:55:57 +0000'
  date_gmt: '2010-03-10 05:55:57 +0000'
  content: About 30,000.  A lot, in other words.
- id: 473
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2010-03-11 11:28:14 +0000'
  date_gmt: '2010-03-11 09:28:14 +0000'
  content: hm weird, I just ran the script on my machine again and it worked fine
    with approx 10k files.. maybe it's just too much files which causes a memory issue?
    dunno--
---
By now, I havn't find any good solution to share my mp3 across multiple systems and disks. I've some on my local machine, some at work and some on my external harddisk to archive. Luckily, when copying my tracks to another library duplicates are ignored. But what annoys me most is that my ratings don't get copied, as iTunes doesn't store it within the file. Some while ago I found a solution by storing the number of stars into the 'Grouping' Field, so I can recover the rating afterwards. Now, I came up with this little applescript do automate the write and recover process. Just run this script, copy you mp3 to the other library, run the script again, and voilá, you ratings are back - nice!

[shell]  
(\* small apple script to save rating into grouping field and  
 vice versa. Perfect to persitent store your rating witin the file  
\*)

tell application "iTunes"  
 repeat with stars from 1 to 5  
 set rating_value to stars \* 20  
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