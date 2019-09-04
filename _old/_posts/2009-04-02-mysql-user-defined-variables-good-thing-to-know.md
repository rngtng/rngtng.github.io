---
id: 121
title: 'MySQL User defined Variables &#8211; good thing to know!'
date: 2009-04-02T13:59:54+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=121
permalink: /2009/04/02/mysql-user-defined-variables-good-thing-to-know/
syntaxhighlighter_encoded:
  - "1"
categories:
  - Happy Hacking
tags:
  - hint
  - mysql
  - user defined
  - variables
---
<p style="margin-bottom:20px">
  <img class="alignright" style="margin: 18px" src="http://matsu.files.wordpress.com/2008/01/mysql-logo.png" alt="" width="140" height="72" /> Have you ever heard of user defined variables in MySQL? I hadn&#8217;t and nearly freaked out when I found out. That&#8217;s the thing I was always looking for, that&#8217;s so cool, and fasten up your SQL live a lot!
</p>

<p style="text-align: left">
  Now, renumbering a table is as easy as never before:
</p>

[text]  
Set @a = 0;  
UPDATE my_table SET id=@a:=@a+1  
[/text]

Check out the docu and examples:  
<http://dev.mysql.com/doc/refman/5.0/en/user-variables.html>