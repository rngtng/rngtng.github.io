---
id: 134
title: 'MySQL: How to swap entires of two columns with just one query'
date: '2009-06-24 14:16:29 +0000'
permalink: "/2009/06/24/mysql-how-to-swap-entires-of-two-columns-with-just-one-query/"
layout: post
categories:
- Happy Hacking
tags:
- update
- mysql
- swap
- values
- query
comments:
- id: 584
  author: algi
  author_email: mysql@test.com
  author_url: ''
  date: '2010-11-02 01:21:10 +0000'
  date_gmt: '2010-11-01 23:21:10 +0000'
  content: That is great! Loved it.
- id: 1258
  author: manoj
  author_email: manojkumar@gmail.com
  author_url: ''
  date: '2012-08-29 13:05:50 +0000'
  date_gmt: '2012-08-29 12:05:50 +0000'
  content: very helpful
---
Check this out, I found out a really nice way how to swap values of two columns with just one query, [using user defined variables](/2009/04/02/mysql-user-defined-variables-good-thing-to-know/). Given a table with two columns _a_ and _b_. To swap their values in whole, use this query:

[text]  
UPDATE my_table SET a=@tmp:=a, a=b, b=@tmp;  
[/text]

Done! Isn't that easy?