all: gen-ruby-ext compile-ruby-ext

gen-ruby-ext:
	swig -includeall -ignoremissing -ruby -o ext/ofa.c -module ofa ofa.h 
	cd ext && ruby extconf.rb

compile-ruby-ext:
	cd ext && make

clean:
	rm -rf ext/ofa.* ext/Makefile

