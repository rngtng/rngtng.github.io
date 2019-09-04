---
id: 529
title: 'HowTo: parse invalid, irregular HTML having &lt; or unlcosed tags'
date: 2011-02-03T13:24:48+01:00
author: tobi
layout: post
guid: http://www.rngtng.com/?p=529
permalink: /2011/02/03/pars-invalid-irregular-html-with-unclosed-tag/
categories:
  - Happy Hacking
tags:
  - html
  - invlaid
  - irregular
  - nokogiri
  - parsing
  - 'Ruby, Rails &amp; Co.'
  - tag
---
I had the &#8216;problem&#8217; that user feedback included lot of love &#8211; mostly by writing &#8216;hearts&#8217;. Unfortunately expressing hearts is done by &#8216;<3' which turns the input into invalid HTML. Bummer. So if you still want allow other basic tags, you have a problem. Here's how I solved it:

First I checked Stackoverflow &#8211; **Tian** had similar problem over there: [Nokogiri: Parsing Irregular <](http://stackoverflow.com/questions/3268387/nokogiri-parsing-irregular)

As a quick fix I came up with this method using a reqular expression to identify unclosed tags:

[code]  
def fix\_irregular\_html(html)  
regexp = /<([^<>]*)(<|$)/

#we need to do this multiple time as regex are overlapping  
while (fixed\_html = html.gsub(regexp, "<\\1\\2")) && fixed\_html != html  
html = fixed_html  
end

fixed_html  
end  
[/code]

See full code including test here: <https://gist.github.com/796571>

It works out well for me, I appreciate any feedback and improvements

See full code and test here:  
<https://gist.github.com/796571>