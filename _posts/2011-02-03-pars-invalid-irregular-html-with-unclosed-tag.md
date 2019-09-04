---
id: 529
title: 'HowTo: parse invalid, irregular HTML having < or unlcosed tags'
date: '2011-02-03 13:24:48 +0000'
permalink: "/2011/02/03/pars-invalid-irregular-html-with-unclosed-tag/"
layout: post
categories:
- Happy Hacking
tags:
- Ruby, Rails &amp; Co.
- parsing
- html
- irregular
- invlaid
- nokogiri
- tag
comments: []
---
I had the 'problem' that user feedback included lot of love - mostly by writing 'hearts'. Unfortunately expressing hearts is done by '\<3' which turns the input into invalid HTML. Bummer. So if you still want allow other basic tags, you have a problem. Here's how I solved it:

First I checked Stackoverflow - **Tian** had similar problem over there: [Nokogiri: Parsing Irregular ](http://stackoverflow.com/questions/3268387/nokogiri-parsing-irregular)

As a quick fix I came up with this method using a reqular expression to identify unclosed tags:

[code]  
def fix_irregular_html(html)  
 regexp = /]\*)(

#we need to do this multiple time as regex are overlapping  
 while (fixed_html = html.gsub(regexp, "&lt;\\1\\2")) && fixed_html != html  
 html = fixed_html  
 end

fixed_html  
end  
[/code]

See full code including test here: <https://gist.github.com/796571>

It works out well for me, I appreciate any feedback and improvements

See full code and test here:  
<https://gist.github.com/796571>