# -*- encoding: utf-8 -*-

require 'rubygems'

SUMMARY = 'This wrapper provides access to the functions, macros, global variables and constants ' +
           'of the ncurses library.  These are mapped to a Ruby Module named "Ncurses":  ' +
           'Functions and external variables are implemented as singleton functions of the Module Ncurses.'

spec = Gem::Specification.new do |s|
  s.name        = 'ncursesw-sup'
  s.version     = '1.3.1.2'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Tobias Herzke']
  s.email       = ['t-peters@users.berlios.de']
  s.has_rdoc    = false
  s.homepage    = 'http://github.com/sup-heliotrope/ncursesw-ruby'
  s.summary     = SUMMARY
  s.description = "Hacked up version of ncurses gem that supports wide characters for supmua.org"

  s.require_paths = ['lib']
  s.files         = [
    "Changes",
    "COPYING",
    "MANIFEST",
    "README",
    "THANKS",
    "TODO",
    "VERSION",
    "examples/example.rb",
    "examples/form.rb",
    "examples/form2.rb",
    "examples/hello_ncurses.rb",
    "examples/LICENSES_for_examples",
    "examples/rain.rb",
    "examples/tclock.rb",
    "examples/read_line.rb",
    "examples/test_scanw.rb",
    "extconf.rb",
    "form_wrap.c",
    "form_wrap.h",
    "make_dist.rb",
    "ncurses_wrap.c",
    "ncurses_wrap.h",
    "lib/ncursesw.rb",
    "lib/ncurses_sugar.rb",
    "panel_wrap.c",
    "panel_wrap.h",
    "menu_wrap.c",
    "menu_wrap.h",
    "compat.h",
  ]
  s.extensions    = ['extconf.rb']
end
