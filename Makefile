.PHONY: build stylesheets demos install

install:
	npm -g install less jade

build:
	make stylesheets
	make demos

stylesheets:
	lessc less/css-utils.less css/css-utils.css
	lessc -x less/css-utils.less css/css-utils.min.css

demos:
	jade templates --out demos -P