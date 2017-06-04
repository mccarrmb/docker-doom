require 'curses'

include Curses

init_screen
curs_set(0)
stdscr.keypad(true)
start_color
init_pair(1, COLOR_WHITE, COLOR_BLUE)
begin
  config_win = Window.new(lines / 2 - 1, cols / 2 - 1, 0, 0)
  config_win.box("o", "o")
  config_win.setpos(2, 2)
  config_win.attron(color_pair(1)|A_NORMAL){
    config_win.addstr("Hello, Jerk.")
  }
  config_win.refresh

  sleep 0.5
  config_win.clear
  config_win.refresh
  config_win.close
  getch
ensure
  close_screen
end

