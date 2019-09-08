---
id: 508
title: 'Mac OS X Terminal: visual indication for your ssh connection'
date: '2011-01-14 11:18:19 +0000'
permalink: "/2011/01/14/mac-os-x-terminal-visual-indication-for-your-ssh-connection/"
layout: post
categories:
- Happy Hacking
tags:
- Mac OS X
- terminal
- ssh
- color
- change
- indicator
comments:
- id: 690
  author: Tim Corrigan
  author_email: tim@timcorrigan.com
  author_url: http://timcorrigan.com
  date: '2011-04-02 10:45:08 +0000'
  date_gmt: '2011-04-02 08:45:08 +0000'
  content: Thank you! Can't believe I've been changing my Terminal theme manually
    for 2 years..
- id: 695
  author: Change your terminal theme when you ssh into a server | A Tempest of Thoughts
  author_email: ''
  author_url: http://tempe.st/2011/04/change-your-terminal-theme-when-you-ssh-into-a-server/
  date: '2011-04-07 10:24:15 +0000'
  date_gmt: '2011-04-07 08:24:15 +0000'
  content: "[...] #lazytweet only partially helped me, directing me to this useful
    post. I liked the approach, it was close, but not [...]"
- id: 713
  author: Natalie
  author_email: namanhvu@gmail.com
  author_url: ''
  date: '2011-05-24 22:52:44 +0000'
  date_gmt: '2011-05-24 20:52:44 +0000'
  content: "Hi, I'm able to ssh to my server when I type 'sshmyserver' but the terminal
    isn't changing theme. I get \"-bash: tabc: command not found\"....\r\n\r\nMy .bashrc
    looks like this:\r\n\r\n<code>function tabc() {\r\nNAME=$1; if [ -z \"$NAME\"
    ]; then NAME=\"Home\"; fi\r\nosascript -e \"tell application \\\"Terminal\\\"
    to set current settings of front window to settings set \\\"$NAME\\\"\"\r\n}\r\ntabc
    SSH-Dev #switch to theme with name\r\ntabc #switch to default theme\r\n</code>"
- id: 714
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-05-25 01:18:35 +0000'
  date_gmt: '2011-05-24 23:18:35 +0000'
  content: Try removing last two Lines. That's just demo code - does it work now??
- id: 715
  author: Natalie
  author_email: namanhvu@gmail.com
  author_url: ''
  date: '2011-05-25 23:52:30 +0000'
  date_gmt: '2011-05-25 21:52:30 +0000'
  content: "Hi Tobi, \r\n\r\nYes, I removed those last two lines and it's still not
    changing to the SSH theme I specified. Eek! *head scratching*\r\n\r\nI ran the
    'tabc' command and it returns '-bash: tabc: command not found' (I created the
    .bashrc file in my home directory ~/). Don't know why the demo code won't even
    run."
- id: 716
  author: tobi
  author_email: t.bielohlawek@gmail.com
  author_url: http://
  date: '2011-05-26 00:03:01 +0000'
  date_gmt: '2011-05-25 22:03:01 +0000'
  content: "uhtsch: well then try:\r\n\r\n\"source ./bashrc\"\r\n\r\ndoes it work
    now? If yes, you file is nevered loaded. Maybe use .bash_profile instead of .bashrc
    then... success??"
- id: 718
  author: Natalie
  author_email: namanhvu@gmail.com
  author_url: ''
  date: '2011-05-27 16:14:35 +0000'
  date_gmt: '2011-05-27 14:14:35 +0000'
  content: Yes it does, thank you. But it only works for that terminal session, is
    there a way to do it so I don't have to run the 'source' and 'alias' command each
    time I open a new terminal window?
- id: 729
  author: Mark
  author_email: murkee@gmail.com
  author_url: http://www.murky.org/blg/
  date: '2011-06-18 13:04:54 +0000'
  date_gmt: '2011-06-18 11:04:54 +0000'
  content: "In .bash_profile add this:\r\n\r\n\r\nif [ -f ~/.bashrc ]; then\r\n   source
    ~/.bashrc\r\nfi\r\n\r\nThis checks for .bashrc and loads it if needed\r\n\r\n\r\n\r\nIn
    .bashrc add this\r\n\r\n2> /dev/null on the same line as NAME\\\"\" - this stops
    osascript errors appearing on later OS X (due to 64/32 bit conflict)\r\n\r\nAdd
    this\r\nalias web=\"tabc SSH; ssh user@server ; tabc Pro\"\r\n\r\n(Change SSH
    and Pro as need be)\r\n\r\nHonestly, you can put it all into .bash_profile, as
    OS X runs .bash_profile on each tab\r\n\r\n\r\nI found tabc on its own did not
    go back to the default, hence 'Pro'"
- id: 730
  author: Mark
  author_email: murkee@gmail.com
  author_url: http://www.murky.org/blg/
  date: '2011-06-18 13:07:36 +0000'
  date_gmt: '2011-06-18 11:07:36 +0000'
  content: "... or.  (doh!) ... change the word 'Default' to the name of the default
    theme. tabc alone works fine then\r\n\r\n\r\n\r\nNb. tabc \"Red Sands\" - quotes
    needed if space"
- id: 882
  author: Steven
  author_email: scjackson@linux.com
  author_url: http://newvalleymedia.com
  date: '2011-12-07 23:05:05 +0000'
  date_gmt: '2011-12-07 21:05:05 +0000'
  content: Thank you very much. After having an oh-crap-what-server-was-that-oh-phew
    moment earlier today this will be a lifesaver.
- id: 1198
  author: admin
  author_email: t.bielohlawek@web.de
  author_url: http://
  date: '2012-07-18 11:02:00 +0000'
  date_gmt: '2012-07-18 10:02:00 +0000'
  content: "btw. I found this gist to even color your tabs:\r\n\r\nhttps://gist.github.com/1140259"
---
![](/files/2011/01/Screen-shot-2011-01-14-at-10.14.45.png)

Here's a HowTo for a nice visual indication to see quickly if your Mac OS X Terminal is running which ssh connection.

The trick is to change your Terminal Theme before you ssh and change it back afterwards.

**1. Create Theme:**  
got to Terminal -\> Preferences -\> Settings create a new theme (or copy existing one) and adjust to your needs, e.g. a light red background etc. Give it a nice name e.g. "SSH-Theme"

**2. Add this function to your .bashrc**

`function tabc() {
NAME=$1; if [-z "$NAME"]; then NAME="Default"; fi
osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}`

"Default" is my default Terminal theme, name this whatever u have

_Usage:_  
`tabc SSH-Theme #switch to theme with name
tabc #switch to default theme`

**3. Create alias to ssh to server:**

` alias sshmyserver="tabc SSH-Theme; ssh yourserver.com; tabc"`

That's it - your are done! Now, if you type `sshmyserver`, your Terminal color will change, ssh will start, and when you end ssh, everything will be back again..

Btw. for Terminal on Mac OS X, I very recommend [Visor - a quake like console](/2009/08/14/quake-like-terminal-on-mac-os-x-visor-plugin/)

**UPDATE**

That's how you do it with iTerm:

`
function tabc() {
  COLOR=$1; if [-z "$COLOR"]; then COLOR="{0, 7722, 9941}"; fi
  osascript -e "tell application \"iTerm\" to set background color of current session of current terminal to $COLOR"
}`

alias sshmyserver="tabc '{18000, 2500, 2500}'; ssh yourserver.com; tabc"