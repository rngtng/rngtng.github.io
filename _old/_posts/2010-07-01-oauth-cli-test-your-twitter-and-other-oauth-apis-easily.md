---
id: 418
title: 'Oauth-CLI &#8211; test your Twitter and other OAuth APIs easily'
date: 2010-07-01T13:36:10+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=418
permalink: /2010/07/01/oauth-cli-test-your-twitter-and-other-oauth-apis-easily/
fb-status-updater-meta:
  - 'a:12:{s:22:"custom-facebook-status";s:0:"";s:21:"custom-twitter-status";s:0:"";s:21:"custom-myspace-status";s:0:"";s:19:"custom-myspace-mood";s:0:"";s:25:"fb-push-as-profile-status";s:0:"";s:23:"fb-push-as-profile-link";s:0:"";s:23:"fb-push-as-page1-status";s:0:"";s:21:"fb-push-as-page1-link";s:0:"";s:14:"fb-share-image";s:0:"";s:7:"tw-push";s:1:"1";s:7:"ms-push";s:0:"";s:4:"push";s:1:"1";}'
categories:
  - 'Ruby, Rails & Co.'
tags:
  - cli
  - command line
  - gem
  - oauth
  - oauthc
  - qype
  - 'Ruby, Rails & Co.'
  - twitter
---
<img src="http://www.rngtng.com/files/2010/07/oauthc.gif" alt="" width="600" height="432" class="aligncenter size-full wp-image-422" srcset="http://www.rngtng.com/files/2010/07/oauthc.gif 600w, http://www.rngtng.com/files/2010/07/oauthc-300x216.gif 300w" sizes="(max-width: 600px) 100vw, 600px" />  
By the time I was working at Qype, I often had to deal with OAuth APIs. Doing example request works to a certain point quite good with a Plugin the for Firefox. But when it comes to Authorized or POST Request you&#8217;re stuck!

So I developed a tiny command line client, which allows you to send request easily. It comes as a gem and easily to install:

`gem install oauth-cli`

After installation, execute **oauthc**. You either make onetime calls, with giving all required data as parameter, or just go into interactive mode, to get a shell for multiple calls and history. For not stating all connection data over and over again, it comes with multiple profile support, a wizard to create those easily and presets for **Twitter and Qype**.

See this nifty example call:  
`oauthc -p twitter get statuses/friends.json`

I hope you like it &#8211; Bug reports, suggestions, updates go to:  
<http://github.com/rngtng/oauth-cli/issues>

See Readme:  
<http://github.com/rngtng/oauth-cli/blob/master/README.rdoc>

See Source:  
<http://github.com/rngtng/oauth-cli>