Finally, I did it. For very long my blogs where running on Wordpress MU. But, well, I don't have to write about the troubles one has. I got hacked a couple of times, updates screwed design/functions and more and more features/complexity was added I nevered used. So I decided it's time to move static. GitHub Pages with Jekyll is the way to go. Drawback would be no comments and no search. Well, no comments means no spam, If you want to comment, make a [Issue/PR](https://github.com/rngtng/rngtng.github.io/issues) :). If you want to search, use [google](https://www.google.com/search?q=site%3Arngtng.com).

Here my process in quick:
* Delete or publish all drafts.
* Delete or approve all pending comments
* Export post with <https://it.wordpress.org/plugins/wp2jekyll> Plugin
* Export post with <https://import.jekyllrb.com>
* Merge both post sources, so I get best of both worlds, see [cleanup.rb](https://github.com/rngtng/rngtng.github.io/blob/master/_tools/cleanup.rb)
* Setp Jekyll with remote theme <https://github.com/BlackrockDigital/startbootstrap-clean-blog-jekyll>
* Make 'backup' of WP site <https://ricks-apps.com/osx/sitesucker>


Sources
* <https://yashints.dev/blog/2018/06/06/blog-migration>
