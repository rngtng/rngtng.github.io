---
id: 134
title: 'MySQL: How to swap entires of two columns with just one query'
date: 2009-06-24T14:16:29+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=134
permalink: /2009/06/24/mysql-how-to-swap-entires-of-two-columns-with-just-one-query/
syntaxhighlighter_encoded:
  - "1"
categories:
  - Happy Hacking
tags:
  - mysql
  - query
  - swap
  - update
  - values
---
Check this out, I found out a really nice way how to swap values of two columns with just one query, [using user defined variables](/2009/04/02/mysql-user-defined-variables-good-thing-to-know/). Given a table with two columns _a_ and _b_. To swap their values in whole, use this query:

[text]  
UPDATE my_table SET a=@tmp:=a, a=b, b=@tmp;  
[/text]

Done! Isn&#8217;t that easy?