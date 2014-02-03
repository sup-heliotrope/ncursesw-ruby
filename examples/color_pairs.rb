#! ruby

require 'ncursesw'

begin
  scr = Ncurses.initscr()
  Ncurses.cbreak()
  Ncurses.noecho()
  Ncurses.keypad(scr, true)

  $black = Ncurses::COLOR_BLACK
  $white = Ncurses::COLOR_WHITE


  # init pair
  Ncurses.init_pair 1, $black, $white or raise ArgumentError
  $cp = Ncurses.COLOR_PAIR(1)
  $cpb = Ncurses.color_pair(1) # alias for the above

  # some consts
  $a = Ncurses.const_get "COLOR_GREEN"

ensure
  # put the screen back in its normal state
  Ncurses.echo()
  Ncurses.nocbreak()
  Ncurses.nl()
  Ncurses.endwin()
end

puts "black: #{$black}"
puts "white: #{$white}"

puts "color pair: #{$cp}"
