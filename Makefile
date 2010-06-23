all: gen-ruby-ext build-gem

gen-ruby-ext:
	swig -ruby -o ext/ofa.c src/ofa.i 

build-gem:
	gem build ofa.gemspec

push-gem:
	gem push ofa-*.gem

clean:
	rm -rf ext/ofa.{o,bundle} ext/{Makefile,*.log} *.gem
