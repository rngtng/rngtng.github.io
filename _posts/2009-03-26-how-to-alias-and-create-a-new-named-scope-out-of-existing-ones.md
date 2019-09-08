---
id: 8
title: How to alias and create a new named scope out of existing ones
date: '2009-03-26 15:32:22 +0000'
permalink: "/2009/03/26/how-to-alias-and-create-a-new-named-scope-out-of-existing-ones/"
layout: post
categories:
- Ruby, Rails & Co.
tags:
- beauty of code
- hint
- named
- scope
comments:
- id: 53
  author: Michael Thompson
  author_email: michael@bluebuttonpress.com
  author_url: ''
  date: '2009-09-18 09:09:53 +0000'
  date_gmt: '2009-09-18 08:09:53 +0000'
  content: 'Thanks, this was useful. I had a bunch of anonymous named scopes I needed
    to chain together, but with OR, rather than AND. It was simple to create a new
    scope using the collection of #scope(:find)[:conditions] joined with " OR ".'
- id: 529
  author: David Ongaro
  author_email: david.ongaro@hamburg.de
  author_url: ''
  date: '2010-06-04 14:05:38 +0000'
  date_gmt: '2010-06-04 12:05:38 +0000'
  content: "Nice. Even though just defining a method like\r\n\r\n  def self.has_moo_and_foo\r\n
    \   has_moo. has_foo\r\n  end\r\n\r\nalso works, I find the named_scope syntax
    more appealing, because one can scan the named scopes in one sight. (And they
    also show up in Fu.scopes).\r\n\r\nWhen you define the scopes in the right order,
    the lambda gets superflous though. So\r\n\r\n  named_scope :has_moo_and_foo, has_moo.has_foo.scope(:find)\r\n\r\nis
    enough. But default_scope conditions are duplicated in this way (with or without
    lambda). Even though this doesn't might hurt it seems to be saver to just exclude
    them:\r\n\r\n  named_scope :has_moo_and_foo, with_exclusive_scope { has_moo.has_foo.scope(:find)
    }"
- id: 651
  author: scragz
  author_email: reg@scragz.com
  author_url: http://scragz.com/
  date: '2011-02-07 05:17:43 +0000'
  date_gmt: '2011-02-07 03:17:43 +0000'
  content: "I wanted to just make some simple aliases like alias_method so I whipped
    this up:\r\n\r\nmodule ActiveRecord\r\n  class Base\r\n    def self.alias_named_scope(alias_scope,
    original_scope)\r\n      named_scope alias_scope, lambda { self.send(original_scope).scope(:find)
    }\r\n    end\r\n  end\r\nend\r\n"
---
[Named](http://www.pathf.com/blogs/2008/06/named-scopes-are-awesome/) [scopes](http://railscasts.com/episodes/108-named-scope) in Rails are just awesome. They so much DRY and beautify your code! But did you ever had the trouble to create a new named_scope out of others? E.g. aliasing multiple ones to a new one. Luckily I now figured out how this works in a nice way.  
The magic key is the method _`scope( :find )`_

This method called on a Scope class returns the Hash used for the ActiveRecord `.find()` call. First it's a nice way to debug your scopes, second it's perfect for our need to chain multiple scoped into one. Check this out:

[ruby]  
class Fu \< ActiveRecord::Base  
named_scope :has_moo, :conditions =\> { :moo =\> true }  
named_scope :has_foo, :conditions =\> { :foo =\> true }

named_scope :has_moo_and_foo, lambda { has_moo.has_foo.scope(:find) }  
end  
[/ruby]

We chain the two scoped `has_moo` and `has_foo` together into a new one called `has_moo_and_foo`. As the return value can only be a Hash we use the above mentioned scope(:find) to transform it into one.

Now this works:

[ruby]Fu.has_moo_and_foo.all[/ruby]

Sweet! Imagine how great this would be if we can return a scope object instead of a hash as well??

See my [pastie here](http://pastie.org/427839) too.