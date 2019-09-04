---
id: 313
title: 'My Snow Leopard (Development) System: Ruby, Rails, Arduino &amp; Co.'
date: '2010-04-27 10:52:03 +0000'
permalink: "/2010/04/27/my-snow-leopard-development-system-ruby-rails-arduino-co/"
layout: post
categories:
- Happy Hacking
tags:
- Ruby, Rails &amp; Co.
- Arduino
- Mac OS X
- Rails &amp; Co.
- rails
- snowleopard
- development
- system
- setup
- lion
comments:
- id: 517
  author: Matthias
  author_email: m.kaeppler@gmail.com
  author_url: ''
  date: '2010-04-27 10:57:04 +0000'
  date_gmt: '2010-04-27 08:57:04 +0000'
  content: Great stuff tobes!
- id: 530
  author: neophob.com &raquo; My Snow Leopard (Development) System
  author_email: ''
  author_url: http://www.neophob.com/2010/06/my-snow-leopard-development-system/
  date: '2010-06-04 19:36:47 +0000'
  date_gmt: '2010-06-04 17:36:47 +0000'
  content: "[...] from  http://www.rngtng.com reddit_url = http://www.neophob.com/2010/06/my-snow-leopard-development-system/;reddit_title
    = [...]"
- id: 579
  author: AppleScript to create keyboard shortcuts | uRaNGaTaNG
  author_email: ''
  author_url: http://www.rngtng.com/2010/10/29/applescript-to-create-keyboard-shortcuts/
  date: '2010-10-29 11:38:57 +0000'
  date_gmt: '2010-10-29 09:38:57 +0000'
  content: "[...] week my company laptop got stolen, so I had to setup my system again
    using this list. The positive part of each new system setup is you think more
    and more how to automate your [...]"
---
_- updated to Lion -_

![](http://www.rngtng.com/files/2010/04/mac_os_x.jpg)

Here's a (maybe incomplete) list of my Mac OS X Development system setup. Mainly for me to remember, but maybe a help for you too:

**Main Development Setup**  
Snow Leopard Lion  
xCode (or latest iPhone SDK)  
Mac Ports, now I prefer [Homebrew](http://mxcl.github.com/homebrew/)  
Ruby: rvm + rubygems + rails etc.  
Database: Mysql 5.1 + [Sequel Pro](http://www.sequelpro.com/)  
OpenVPN: Tunnelblick, or Cisco VPN client + Shimo VPN Menubar Addon  
Terminal Console Extension: [SIMBL](http://www.culater.net/software/SIMBL/SIMBL.php) + [Visor](http://visor.binaryage.com/) [iTerm 2](http://www.iterm2.com/)  
[TextMate](http://macromates.com/) + [Missing Drawer](http://github.com/jezdez/textmate-missingdrawer) + Get Bundles + Rails + [AckMate](http://github.com/protocool/AckMate) ...  
[jEdit](http://www.jedit.org/) + FTP + ...  
Git + [GitX (Experimental)](http://brotherbard.com/blog/2010/09/gitx-update/)  
FTP & Co: Cyberduck  
Hudson status: [CCMenu](http://ccmenu.sourceforge.net/)  
Share Files: [Dropbox](http://www.dropbox.com/referrals/NTEzNjgzMzk)  
[Google Chrome](http://www.google.com/chrome)  
Safari  
[Firefox](http://www.mozilla-europe.org/en/firefox/) + Firebug

**Extended Development**  
Arduino  
Processing  
Fritzing  
Eclipse

**Nice to have:**  
System Notification: [Growl](http://growl.info/) + Growl Mail  
Read RSS: NetNewsWire Now using RSS within Apple Mail  
IRC Client: [Colloquy](http://colloquy.info/) and [hide join messages](http://clintecker.com/disable-irc-msgs.html) [Adium](http://adium.im/)  
[Skype](http://www.skype.com/) and [Tweetie](http://www.atebits.com/tweetie-mac/) original Twitter client  
Control iTunes: [SizzlingKeys](http://yellowmug.com/sk4it/) [Bowtie](http://bowtieapp.com/)  
Spotify and [Spotify Menubar](http://lifeupnorth.co.uk/lun/#5) and [more goddies](http://pansentient.com/2009/05/apple-mac-and-iphone-apps-for-spotify/)  
Last.fm: iScrobbler  
All Codecs: [Perian](http://www.perian.org/)  
Dasboard widgets: [IP](http://www.apple.com/downloads/dashboard/networking_security/ipwidget.html) + App Update  
Copy&Paste History: Flycut  
Track Work: MacTimeLog  
Word replacement: iWork  
Keep your Notes: Journler  
Extend Finder: TotalFinder  
Mail [Archiver](http://stl.techinno.nl/archive/) and [other](http://www.hawkwings.net/plugins.htm) [MailPlugins](http://tikouka.net/mailapp/)

**Install hints**  
**mac ports**  
`sudo port selfupdate
sudo port install git-core +svn +bash_completion
sudo port install ImageMagick +no_x11
sudo port install wget`

**ruby gems**  
<http://stackoverflow.com/questions/991708/rails-mysql-and-snow-leopard>  
`sudo gem self update
sudo env ARCHFLAGS="-arch x86_64" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
sudo gem install rails
sudo gem install passenger
sudo gem install piston`

**Safari open always in tabs:**  
<http://www.456bereastreet.com/archive/200812/make_safari_open_targeted_links_in_new_tabs_instead_of_new_windows/>  
`defaults write com.apple.Safari TargetedClicksCreateTabs -bool true `

**Safari enable Development mode:**  
`defaults write com.apple.Safari WebKitDeveloperExtras -bool true
defaults write com.apple.Safari IncludeDebugMenu 1`

**Safari Plugins:**  
<http://alexstaubo.github.com/keywurl/>

**TextMate install bundle**  
`cd ~/Desktop && svn co <http://svn.textmate.org/trunk/Review/Bundles/GetBundles.tmbundle/`>

Well, that's it! Stay tuned for updated...