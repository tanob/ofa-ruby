libofa for Ruby
===============

This Ruby gem wraps the OFA library ([libofa][1]) that is an open-source audio fingerprint created and provided by MusicIP (now called [AmpliFIND Music Services][2]).

How to use
----------

	require 'ofa'

	sample_rate = 44100
	stereo = 1
	data = File.read('music.wav')
	puts "Using libofa version: #{Ofa::version.join('.')}"
	puts 'Calculated PUID:', Ofa::create_fingerprint(data, data.size/2, sample_rate, stereo)
	
[1]: http://github.com/tanob/libofa
[2]: http://www.amplifindmusicservices.com

