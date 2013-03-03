require 'mkmf'
dir_config('ofa')
have_library('ofa') or raise 'You need to have libofa installed.'
find_library('ofa', nil)
create_makefile('ofa')

