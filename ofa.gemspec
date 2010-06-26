
Gem::Specification.new do |s|
	s.name 		= 'ofa'
	s.version 	= '1.2'
	s.platform	= Gem::Platform::RUBY
	s.author	= 'Adriano Bonat'
	s.email		= 'adrianob@gmail.com'
	s.homepage	= 'http://github.com/tanob/ofa-ruby'
	s.summary	= 'Ruby binding to libofa'
	s.description	= 'Open-source audio fingerprint by MusicIP'

	s.extensions	<< 'ext/extconf.rb'
	s.files		= Dir['ext/*']
end

