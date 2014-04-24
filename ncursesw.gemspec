# -*- encoding: utf-8 -*-

SUMMARY = 'This wrapper provides access to the functions, macros, global variables and constants ' +
           'of the ncurses library.  These are mapped to a Ruby Module named "Ncurses":  ' +
           'Functions and external variables are implemented as singleton functions of the Module Ncurses.'

spec = Gem::Specification.new do |s|
  s.name        = 'ncursesw'
  s.version     = '1.4.8'
  s.license     = 'LGPL-2.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Tobias Herzke', 'Sup developers']
  s.email       = ['sup-talk@rubyforge.org']
  s.has_rdoc    = false
  s.homepage    = 'http://github.com/sup-heliotrope/ncursesw-ruby'
  s.summary     = SUMMARY
  s.description = "Tweaked version of ncursesw from http://ncurses-ruby.berlios.de/."

  s.require_paths = ['lib']
  s.files         = [
    "Changes",
    "COPYING",
    "README",
    "THANKS",
    "TODO",
    "examples/example.rb",
    "examples/form.rb",
    "examples/form2.rb",
    "examples/form_get_wch.rb",
    "examples/hello_ncurses.rb",
    "examples/LICENSES_for_examples",
    "examples/rain.rb",
    "examples/tclock.rb",
    "examples/read_line.rb",
    "examples/test_scanw.rb",
    "extconf.rb",
    "form_wrap.c",
    "form_wrap.h",
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

