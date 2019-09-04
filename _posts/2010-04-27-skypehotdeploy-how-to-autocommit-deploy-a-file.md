---
id: 64
title: 'Skypehotdeploy &#8211; How to autocommit &#038; deploy a file'
date: 2010-04-27T21:49:36+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=64
permalink: /2010/04/27/skypehotdeploy-how-to-autocommit-deploy-a-file/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - Happy Hacking
tags:
  - applescript
  - hotdeploy
  - skype
  - subversion
  - svn
---
At Qype we had the problem of a college sending me a file which needed to get into the development trunk and updated on the production system. Problem was, he had

<http://gist.github.com/380749>

Skype auto accept file,

folder action on download folder.

[plain]  
my hotdeploy()

on adding folder items to this\_folder after receiving these\_items  
my hotdeploy()  
end adding folder items to

on hotdeploy()  
set usr_home to &#8220;/Users/tobiasb/&#8221;  
set prj\_folder to usr\_home & &#8220;Sites/qype_admin/&#8221;  
set filename to &#8220;report_queries.yml&#8221;

set srcs to usr_home & &#8220;Downloads/&#8221; & filename  
set dest to prj_folder & &#8220;config/&#8221; & filename

try  
tell application &#8220;Finder&#8221; to set file_exists to exists srcs as POSIX file  
if file_exists then  
say &#8220;here we go&#8221;  
do shell script &#8220;mv &#8221; & srcs & &#8221; &#8221; & dest  
set diff to do shell script &#8220;/opt/local/bin/svn diff &#8221; & dest  
if not diff is equal to &#8220;&#8221; then  
#set commit to &#8220;/opt/local/bin/svn ci &#8211;quiet -m&#8217;SkypeAutoCommiter: updated report queries&#8217; &#8221; & dest & &#8220;;&#8221;  
#set hotdeploy to &#8220;cd &#8221; & prj_folder & &#8220;; /usr/bin/cap production qype:hotdeploy FILES=config/&#8221; & filename & &#8220;;&#8221;  
#set out to commit & hotdeploy  
set out to do shell script &#8220;/Users/tobiasb/bin/update\_report\_queries.sh&#8221;  
my message(&#8220;done&#8221;)  
say &#8220;done&#8221;  
else  
my message(&#8220;no changes&#8221;)  
end if  
else  
return &#8220;no file&#8221;  
end if  
on error the error\_message number the error\_number  
my message(&#8220;error&#8221;)  
say &#8220;error&#8221;  
set the error\_text to &#8220;Error: &#8221; & the error\_number & &#8220;. &#8221; & the error_message  
display dialog the error_text buttons {&#8220;OK&#8221;} default button 1  
return the error_text  
end try  
end hotdeploy

on message(msg)  
tell application &#8220;Skype&#8221; to send command &#8220;MESSAGE justalii SkypeAutoCommiter: &#8221; & msg script name &#8220;to Alli&#8221;  
#say msg  
end message  
[/plain]