---
id: 8
title: How to alias and create a new named scope out of existing ones
date: 2009-03-26T15:32:22+01:00
author: tobi
layout: post
guid: http://urangatang.wordpress.com/?p=8
permalink: /2009/03/26/how-to-alias-and-create-a-new-named-scope-out-of-existing-ones/
syntaxhighlighter_encoded:
  - "1"
openid_comments:
  - 'a:1:{i:0;s:3:"651";}'
categories:
  - 'Ruby, Rails &amp; Co.'
tags:
  - beauty of code
  - hint
  - named
  - scope
---
[Named](http://www.pathf.com/blogs/2008/06/named-scopes-are-awesome/) [scopes](http://railscasts.com/episodes/108-named-scope) in Rails are just awesome. They so much DRY and beautify your code! But did you ever had the trouble to create a new named_scope out of others? E.g. aliasing multiple ones to a new one. Luckily I now figured out how this works in a nice way.  
The magic key is the method _`scope( :find )`_

This method called on a Scope class returns the Hash used for the ActiveRecord `.find()` call. First it&#8217;s a nice way to debug your scopes, second it&#8217;s perfect for our need to chain multiple scoped into one. Check this out:

[ruby]  
class Fu < ActiveRecord::Base  
named\_scope :has\_moo, :conditions => { :moo => true }  
named\_scope :has\_foo, :conditions => { :foo => true }

named\_scope :has\_moo\_and\_foo, lambda { has\_moo.has\_foo.scope(:find) }  
end  
[/ruby]

We chain the two scoped `has_moo` and `has_foo` together into a new one called `has_moo_and_foo`. As the return value can only be a Hash we use the above mentioned scope(:find) to transform it into one.

Now this works:

[ruby]Fu.has\_moo\_and_foo.all[/ruby]

Sweet! Imagine how great this would be if we can return a scope object instead of a hash as well??

See my [pastie here](http://pastie.org/427839){.broken_link} too.