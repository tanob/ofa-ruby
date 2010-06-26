all: gen-ruby-ext build-gem

gen-ruby-ext:
	swig -Wall -c++ -ruby -o ext/ofa.cpp src/ofa.i

build-gem:
	gem build ofa.gemspec

push-gem:
	gem push ofa-*.gem

clean:
	rm -rf ext/ofa.* ext/{Makefile,*.log} *.gem
