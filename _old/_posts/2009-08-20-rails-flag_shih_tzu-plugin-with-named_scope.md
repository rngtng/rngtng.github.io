---
id: 200
title: Rails flag_shih_tzu Plugin with named_scope
date: 2009-08-20T18:02:36+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=200
permalink: /2009/08/20/rails-flag_shih_tzu-plugin-with-named_scope/
syntaxhighlighter_encoded:
  - "1"
categories:
  - 'Ruby, Rails & Co.'
tags:
  - extension
  - fork
  - github
  - plugin
  - ruby on rails
---
When it comes to store a load of boolean data into your model you easily end up with lots of columns which blow up your table unnecessarily. The developers at [Xing](http://blog.xing.com/category/tech-blog) solved this problem with a nifty Rails Plugin called [flag\_shih\_tzu](http://github.com/xing/flag_shih_tzu/){.broken_link}. The trick is to store all boolean values combined as a bit vector, which allows you to put up to 32 values (4Byte) within a single Integer column. Automatic generated access methods allows you to deal with you model as your are used to. Wanna see an example? (Taken from plugin docs)

[ruby]  
class Spaceship < ActiveRecord::Base  
include FlagShihTzu

has_flags 1 => :warpdrive,  
2 => :shields

end

enterprise = Spaceship.new  
enterprise.warpdrive = true  
enterprise.shields = false  
enterprise.save

enterprise.warpdrive? #=> true  
enterprise.shields? # => false  
[/ruby]

Nice, isn&#8217;t it?

Unfortunately named scopes where missing for selecting models easily. So another github fork, another fix, and here were are. Now this works as well:

[ruby]  
Spaceship.flagged(:warpdrive).not_flagged(:shields).all  
[/ruby]

Check it out here: [http://github.com/rngtng/flag\_shih\_tzu/tree/master](http://github.com/rngtng/flag_shih_tzu/tree/master)

**Update:** replaced &#8216;routes&#8217; with &#8216;scopes&#8217; &#8211; I&#8217;m getting confused with that all the time, how come!? 😉