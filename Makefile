page:
	docker run -it --rm -v "$$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages

pages:
	docker run -it --rm -v "$$PWD":/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll build

admin:
	docker run -it --rm -v "$$PWD":/srv/jekyll -p "4000:4000" haebinshin/jekyll-admin jekyll serve

dev:
	docker run -it -v "$$PWD":/home ruby bash

export:
	cd _tools && ./export.rb

cleanup:
	cd _tools && ./cleanup.rb

export_tunnel:
	ssh ssh-114853-tobi@hopit.de -L 0.0.0.0:33360:mysql5.df.eu:3306
