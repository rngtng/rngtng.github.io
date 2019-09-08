---
id: 121
title: MySQL User defined Variables - good thing to know!
date: '2009-04-02 13:59:54 +0000'
permalink: "/2009/04/02/mysql-user-defined-variables-good-thing-to-know/"
layout: post
categories:
- Happy Hacking
tags:
- hint
- mysql
- variables
- user defined
comments:
- id: 731
  author: Ilan
  author_email: ilan.ilje@gmail.com
  author_url: http://mysqldiary.com
  date: '2011-06-20 14:23:31 +0000'
  date_gmt: '2011-06-20 12:23:31 +0000'
  content: "By using User-defined variables, one can add some kind of procedural logic
    to the MySQL\x92s relational logic.\r\nSee some examples http://www.mysqldiary.com/user-defined-variables/"
---
![](http://matsu.files.wordpress.com/2008/01/mysql-logo.png) Have you ever heard of user defined variables in MySQL? I hadn't and nearly freaked out when I found out. That's the thing I was always looking for, that's so cool, and fasten up your SQL live a lot!

Now, renumbering a table is as easy as never before:

[text]  
Set @a = 0;  
UPDATE my_table SET id=@a:=@a+1  
[/text]

Check out the docu and examples:  
<http://dev.mysql.com/doc/refman/5.0/en/user-variables.html>