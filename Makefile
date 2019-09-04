page:
	docker run -it --rm -v "$$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages

pages:
	docker run -it --rm -v "$$PWD":/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll build

dev:
	docker run -it --rm -v "$$PWD":/home ruby bash	

export:
	ruby export.rb

export_tunnel:
	ssh ssh-114853-tobi@hopit.de -L 0.0.0.0:33360:mysql5.df.eu:3306

dep:
	apk add mariadb-dev
	gem install unidecode
	gem install sequel
	gem install jekyll-import
	gem install mysql2
	gem install htmlentities
	gem install front_matter_parser
