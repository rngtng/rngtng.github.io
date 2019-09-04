---
id: 64
title: Skypehotdeploy - How to autocommit & deploy a file
date: '2010-04-27 21:49:36 +0000'
permalink: "/2010/04/27/skypehotdeploy-how-to-autocommit-deploy-a-file/"
layout: post
categories:
- Happy Hacking
tags:
- applescript
- hotdeploy
- skype
- subversion
- svn
comments: []
---
At Qype we had the problem of a college sending me a file which needed to get into the development trunk and updated on the production system. Problem was, he had

<http://gist.github.com/380749>

Skype auto accept file,

folder action on download folder.

[plain]  
my hotdeploy()

on adding folder items to this_folder after receiving these_items  
my hotdeploy()  
end adding folder items to

on hotdeploy()  
set usr_home to "/Users/tobiasb/"  
set prj_folder to usr_home & "Sites/qype_admin/"  
set filename to "report_queries.yml"

set srcs to usr_home & "Downloads/" & filename  
set dest to prj_folder & "config/" & filename

try  
tell application "Finder" to set file_exists to exists srcs as POSIX file  
if file_exists then  
say "here we go"  
do shell script "mv " & srcs & " " & dest  
set diff to do shell script "/opt/local/bin/svn diff " & dest  
if not diff is equal to "" then  
#set commit to "/opt/local/bin/svn ci --quiet -m'SkypeAutoCommiter: updated report queries' " & dest & ";"  
#set hotdeploy to "cd " & prj_folder & "; /usr/bin/cap production qype:hotdeploy FILES=config/" & filename & ";"  
#set out to commit & hotdeploy  
set out to do shell script "/Users/tobiasb/bin/update_report_queries.sh"  
my message("done")  
say "done"  
else  
my message("no changes")  
end if  
else  
return "no file"  
end if  
on error the error_message number the error_number  
my message("error")  
say "error"  
set the error_text to "Error: " & the error_number & ". " & the error_message  
display dialog the error_text buttons {"OK"} default button 1  
return the error_text  
end try  
end hotdeploy

on message(msg)  
tell application "Skype" to send command "MESSAGE justalii SkypeAutoCommiter: " & msg script name "to Alli"  
#say msg  
end message  
[/plain]