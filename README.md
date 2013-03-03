libofa for Ruby
===============

This Ruby gem wraps the OFA library ([libofa][1]) that is an open-source audio fingerprint created and provided by MusicIP (now called [AmpliFIND Music Services][2]).

Install
-------

    gem install ofa -- --with-ofa-include=<libofa-dir>/include --with-ofa-lib=<libofa-dir>/lib

or if you're using Bundler:

    bundle config build.ofa --with-ofa-include=<libofa-dir>/include --with-ofa-lib=<libofa-dir>/lib

If you're using OSX and Homebrew you can install libofa by using my [tap][3]:

    brew tap tanob/custom
    brew install libofa

How to use
----------

	require 'ofa'

	sample_rate = 44100
	stereo = true
	data = File.read('music.wav')
	puts "Using libofa version: #{Ofa::version.join('.')}"
	puts 'Calculated PUID:', Ofa::create_fingerprint(data, data.size/2, sample_rate, stereo)

[1]: http://github.com/tanob/libofa
[2]: http://www.amplifindmusicservices.com
[3]: https://github.com/tanob/homebrew-custom

