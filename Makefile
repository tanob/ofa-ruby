all: gen-ruby-ext compile-ruby-ext

gen-ruby-ext:
	swig -ruby -o ext/ofa.c ofa.i 
	cd ext && ruby extconf.rb

compile-ruby-ext:
	cd ext && make

clean:
	rm -rf ext/ofa.* ext/Makefile ext/*.log

