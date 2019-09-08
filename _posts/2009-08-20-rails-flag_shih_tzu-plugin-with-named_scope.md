---
id: 200
title: Rails flag_shih_tzu Plugin with named_scope
date: '2009-08-20 18:02:36 +0000'
permalink: "/2009/08/20/rails-flag_shih_tzu-plugin-with-named_scope/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- extension
- plugin
- github
- fork
- ruby on rails
comments:
- id: 48
  author: Sebastian R&ouml;bke
  author_email: sebastian.roebke@xing.com
  author_url: https://www.xing.com/profile/Sebastian_Roebke
  date: '2009-08-21 09:38:20 +0000'
  date_gmt: '2009-08-21 08:38:20 +0000'
  content: "Hi Tobi,\r\n\r\nvery good idea!\r\n\r\nPlease make sure to talk about
    \"named scopes\" instead of \"named routes\" here ;)\r\n\r\nAs said already via
    private msg, I would prefer dedicated named scopes like \r\nSpaceship.warpdrive.all
    und Spaceship.not_warpdrive.all\r\ninstead of the general ones using a symbol
    parameter.\r\n\r\nWe should then extend the tests to really use ActiveRecord and
    check the generated named scopes.\r\n\r\nWhat do you think?\r\n\r\nThanks,\r\nSebastian"
---
When it comes to store a load of boolean data into your model you easily end up with lots of columns which blow up your table unnecessarily. The developers at [Xing](http://blog.xing.com/category/tech-blog) solved this problem with a nifty Rails Plugin called [flag_shih_tzu](http://github.com/xing/flag_shih_tzu/). The trick is to store all boolean values combined as a bit vector, which allows you to put up to 32 values (4Byte) within a single Integer column. Automatic generated access methods allows you to deal with you model as your are used to. Wanna see an example? (Taken from plugin docs)

[ruby]  
class Spaceship \< ActiveRecord::Base  
 include FlagShihTzu

has_flags 1 =\> :warpdrive,  
 2 =\> :shields

end

enterprise = Spaceship.new  
enterprise.warpdrive = true  
enterprise.shields = false  
enterprise.save

enterprise.warpdrive? #=\> true  
enterprise.shields? # =\> false  
[/ruby]

Nice, isn't it?

Unfortunately named scopes where missing for selecting models easily. So another github fork, another fix, and here were are. Now this works as well:

[ruby]  
Spaceship.flagged(:warpdrive).not_flagged(:shields).all  
[/ruby]

Check it out here: <http://github.com/rngtng/flag_shih_tzu/tree/master>

**Update:** replaced 'routes' with 'scopes' - I'm getting confused with that all the time, how come!? ;-)