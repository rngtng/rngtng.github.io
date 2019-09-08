---
id: 508
title: 'Mac OS X Terminal: visual indication for your ssh connection'
date: 2011-01-14T11:18:19+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=508
permalink: /2011/01/14/mac-os-x-terminal-visual-indication-for-your-ssh-connection/
categories:
  - Happy Hacking
tags:
  - change
  - color
  - indicator
  - Mac OS X
  - ssh
  - terminal
---
<p style="text-align: center">
  <img class="size-full wp-image-512 aligncenter" src="http://www.rngtng.com/files/2011/01/Screen-shot-2011-01-14-at-10.14.45.png" alt="" width="593" height="427" srcset="http://www.rngtng.com/files/2011/01/Screen-shot-2011-01-14-at-10.14.45.png 847w, http://www.rngtng.com/files/2011/01/Screen-shot-2011-01-14-at-10.14.45-300x216.png 300w" sizes="(max-width: 593px) 100vw, 593px" />
</p>

Here&#8217;s a HowTo for a nice visual indication to see quickly if your Mac OS X Terminal is running which ssh connection.

The trick is to change your Terminal Theme before you ssh and change it back afterwards.

**1. Create Theme:**  
got to Terminal -> Preferences -> Settings create a new theme (or copy existing one) and adjust to your needs, e.g. a light red background etc. Give it a nice name e.g. &#8220;SSH-Theme&#8221;

**2. Add this function to your .bashrc**

`function tabc() {<br />
NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi<br />
osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""<br />
}`

&#8220;Default&#8221; is my default Terminal theme, name this whatever u have

_Usage:_  
`tabc SSH-Theme  #switch to theme with name<br />
tabc  #switch to default theme`

**3. Create alias to ssh to server:**

 `alias sshmyserver="tabc SSH-Theme; ssh yourserver.com; tabc"`

That&#8217;s it &#8211; your are done! Now, if you type `sshmyserver`, your Terminal color will change, ssh will start, and when you end ssh, everything will be back again..

Btw. for Terminal on Mac OS X, I very recommend [Visor &#8211; a quake like console](http://www.rngtng.com/2009/08/14/quake-like-terminal-on-mac-os-x-visor-plugin/)

**UPDATE**

That&#8217;s how you do it with iTerm:

`<br />
function tabc() {<br />
  COLOR=$1; if [ -z "$COLOR" ]; then COLOR="{0, 7722, 9941}"; fi<br />
  osascript -e "tell application \"iTerm\" to set background color of current session of current terminal to $COLOR"<br />
}</p>
<p>alias sshmyserver="tabc '{18000, 2500, 2500}'; ssh yourserver.com; tabc"<br />
`