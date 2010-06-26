all: gen-ruby-ext build-gem

gen-ruby-ext:
	swig -Wall -c++ -ruby -o ext/ofa.cpp src/ofa.i

build-gem: gen-ruby-ext
	gem build ofa.gemspec

push-gem: build-gem
	gem push ofa-*.gem

clean:
	rm -rf ext/ofa.* ext/{Makefile,*.log} *.gem
