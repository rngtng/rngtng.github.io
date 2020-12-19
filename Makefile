page:
	docker run -it --rm -v "$$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages

pages:
	docker run -it --rm -v "$$PWD":/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll build