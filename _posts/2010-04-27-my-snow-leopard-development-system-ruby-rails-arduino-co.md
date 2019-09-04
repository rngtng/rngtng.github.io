---
id: 313
title: 'My Snow Leopard (Development) System: Ruby, Rails, Arduino &amp; Co.'
date: 2010-04-27T10:52:03+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=313
permalink: /2010/04/27/my-snow-leopard-development-system-ruby-rails-arduino-co/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - Happy Hacking
tags:
  - Arduino
  - development
  - lion
  - Mac OS X
  - rails
  - 'Rails &amp; Co.'
  - 'Ruby, Rails &amp; Co.'
  - setup
  - snowleopard
  - system
---
_&#8211; updated to Lion &#8211;_ 

<p style="text-align: center">
  <img src="http://www.rngtng.com/files/2010/04/mac_os_x.jpg" alt="" width="500" height="181" class="aligncenter size-full wp-image-497" srcset="http://www.rngtng.com/files/2010/04/mac_os_x.jpg 500w, http://www.rngtng.com/files/2010/04/mac_os_x-300x108.jpg 300w" sizes="(max-width: 500px) 100vw, 500px" />
</p>

Here&#8217;s a (maybe incomplete) list of my Mac OS X Development system setup. Mainly for me to remember, but maybe a help for you too:

**Main Development Setup**  
<del datetime="2012-01-09T17:56:37+00:00">Snow Leopard</del> Lion  
xCode (or latest iPhone SDK)  
Mac Ports, now I prefer [Homebrew](http://mxcl.github.com/homebrew/)  
Ruby: rvm + rubygems + rails etc.  
Database: Mysql 5.1 + [Sequel Pro](http://www.sequelpro.com/)  
OpenVPN: Tunnelblick, or Cisco VPN client + Shimo VPN Menubar Addon  
<del datetime="2012-01-09T17:51:01+00:00">Terminal Console Extension: <a href="http://www.culater.net/software/SIMBL/SIMBL.php">SIMBL</a> + <a href="http://visor.binaryage.com/">Visor</a></del> [iTerm 2](http://www.iterm2.com/)  
[TextMate](http://macromates.com/) + [Missing Drawer](http://github.com/jezdez/textmate-missingdrawer) + Get Bundles + Rails + [AckMate](http://github.com/protocool/AckMate) &#8230;  
[jEdit](http://www.jedit.org/) + FTP + &#8230;  
Git + [GitX (Experimental)](http://brotherbard.com/blog/2010/09/gitx-update/)  
FTP & Co: Cyberduck  
Hudson status: [CCMenu](http://ccmenu.sourceforge.net/)  
Share Files: [Dropbox](http://www.dropbox.com/referrals/NTEzNjgzMzk)  
[Google Chrome](http://www.google.com/chrome)  
Safari  
[Firefox](http://www.mozilla-europe.org/en/firefox/){.broken_link} + Firebug

**Extended Development**  
Arduino  
Processing  
Fritzing  
Eclipse

**Nice to have:**  
System Notification: [Growl](http://growl.info/) + Growl Mail  
<del datetime="2012-01-09T17:51:01+00:00">Read RSS: NetNewsWire</del> Now using RSS within Apple Mail  
<del datetime="2012-01-09T17:51:01+00:00">IRC Client: <a href="http://colloquy.info/">Colloquy</a> and <a href="http://clintecker.com/disable-irc-msgs.html" class="broken_link">hide join messages</a></del> [Adium](http://adium.im/)  
[Skype](http://www.skype.com/) and <del datetime="2012-01-09T17:51:01+00:00"><a href="http://www.atebits.com/tweetie-mac/">Tweetie</a></del> original Twitter client  
<del datetime="2012-01-09T17:51:01+00:00">Control iTunes: <a href="http://yellowmug.com/sk4it/">SizzlingKeys</a></del> [Bowtie](http://bowtieapp.com/)  
Spotify and [Spotify Menubar](http://lifeupnorth.co.uk/lun/#5){.broken_link} and [more goddies](http://pansentient.com/2009/05/apple-mac-and-iphone-apps-for-spotify/)  
Last.fm: iScrobbler  
All Codecs: [Perian](http://www.perian.org/)  
Dasboard widgets: [IP](http://www.apple.com/downloads/dashboard/networking_security/ipwidget.html){.broken_link} + App Update  
Copy&Paste History: Flycut  
Track Work: MacTimeLog  
Word replacement: iWork  
Keep your Notes: Journler  
Extend Finder: TotalFinder  
Mail [Archiver](http://stl.techinno.nl/archive/) and [other](http://www.hawkwings.net/plugins.htm){.broken_link} [MailPlugins](http://tikouka.net/mailapp/)

**Install hints**  
**mac ports**  
`sudo port selfupdate<br />
sudo port install git-core +svn +bash_completion<br />
sudo port install ImageMagick +no_x11<br />
sudo port install wget`

**ruby gems**  
<http://stackoverflow.com/questions/991708/rails-mysql-and-snow-leopard>  
`sudo gem self update<br />
sudo env ARCHFLAGS="-arch x86_64" gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config<br />
sudo gem install rails<br />
sudo gem install passenger<br />
sudo gem install piston`

**Safari open always in tabs:**  
[http://www.456bereastreet.com/archive/200812/make\_safari\_open\_targeted\_links\_in\_new\_tabs\_instead\_of\_new_windows/](http://www.456bereastreet.com/archive/200812/make_safari_open_targeted_links_in_new_tabs_instead_of_new_windows/)  
`defaults write com.apple.Safari TargetedClicksCreateTabs -bool true` 

**Safari enable Development mode:**  
`defaults write com.apple.Safari WebKitDeveloperExtras -bool true<br />
defaults write com.apple.Safari IncludeDebugMenu 1`

**Safari Plugins:**  
<http://alexstaubo.github.com/keywurl/>

**TextMate install bundle**  
`cd ~/Desktop && svn co http://svn.textmate.org/trunk/Review/Bundles/GetBundles.tmbundle/`

Well, that&#8217;s it! Stay tuned for updated&#8230;