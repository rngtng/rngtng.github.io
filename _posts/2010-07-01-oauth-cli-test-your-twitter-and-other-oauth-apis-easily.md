---
id: 418
title: Oauth-CLI - test your Twitter and other OAuth APIs easily
date: '2010-07-01 13:36:10 +0000'
permalink: "/2010/07/01/oauth-cli-test-your-twitter-and-other-oauth-apis-easily/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- Ruby, Rails & Co.
- gem
- oauth
- oauthc
- cli
- command line
- twitter
- qype
comments: []
---
![](http://www.rngtng.com/files/2010/07/oauthc.gif)  
By the time I was working at Qype, I often had to deal with OAuth APIs. Doing example request works to a certain point quite good with a Plugin the for Firefox. But when it comes to Authorized or POST Request you're stuck!

So I developed a tiny command line client, which allows you to send request easily. It comes as a gem and easily to install:

`gem install oauth-cli`

After installation, execute **oauthc**. You either make onetime calls, with giving all required data as parameter, or just go into interactive mode, to get a shell for multiple calls and history. For not stating all connection data over and over again, it comes with multiple profile support, a wizard to create those easily and presets for **Twitter and Qype**.

See this nifty example call:  
`oauthc -p twitter get statuses/friends.json`

I hope you like it - Bug reports, suggestions, updates go to:  
<http://github.com/rngtng/oauth-cli/issues>

See Readme:  
<http://github.com/rngtng/oauth-cli/blob/master/README.rdoc>

See Source:  
<http://github.com/rngtng/oauth-cli>