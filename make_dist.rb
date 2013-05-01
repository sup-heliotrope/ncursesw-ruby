#!/usr/bin/env ruby
# (C) 2002-2011 Tobias Herzke
# License: LGPL v2.1
# $Id: make_dist.rb,v 1.8 2011-05-30 23:05:50 t-peters Exp $

require "fileutils"

def sys(i)
  puts("\"#{i}\"")
  system(i)
end

dir  = File.dirname(__FILE__)

%w(ncurses ncursesw).each{|flavor|

base = flavor+"-ruby"

files = IO.readlines(dir + "/MANIFEST_"+flavor).collect{|filename|filename.chomp}

Version = File.new("#{dir}/VERSION").readline.chomp

FileUtils.mkdir "#{base}-#{Version}"
files.each{|filename|
  if filename.index "/"
    FileUtils.mkdir_p "#{base}-#{Version}/#{File.dirname(filename)}"
  end
  if filename.index("example") 
    sys "sed -e '/require/ s/ncurses/#{flavor}/' <#{dir}/#{filename} >#{base}-#{Version}/#{filename}"
  else
    sys "cp #{dir}/#{filename} #{base}-#{Version}/#{filename}"
  end
}
sys "cp #{dir}/extconf_#{flavor}.rb #{base}-#{Version}/extconf.rb"
sys "tar cjf #{base}-#{Version}.tar.bz2 --owner=0 --group=0 #{base}-#{Version}"

sys "rm -r #{base}-#{Version}/"
}
