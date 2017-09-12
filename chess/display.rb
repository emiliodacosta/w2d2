require "colorize"
require "byebug"
require_relative "board.rb"
require_relative "cursor.rb"


class Display



  def initialize(board = Board.new)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render

    puts "________________________"
    @board.grid.each.with_index do |row, idx|

      row.each.with_index do |sq, i|
        #debugger

        if @cursor.cursor_pos == [idx, i]
          print "|P|".colorize(sq.color).colorize( :background => :light_magenta)
        elsif sq.color
          print "|P|".colorize(sq.color)
        else
          print "|_|"
        end

        puts if i == row.length-1

      end
    end
    puts "________________________"
  end

  def render_loop
    p @cursor.cursor_pos
    render
    @cursor.get_input
  end





end

a = Display.new()

while true
  a.render_loop
end


# .display.colorize(:black)
#
# king = "\u2654"
#  TODO: COLORS ["This is blue"].colorize(:blue)
#
#         :black   => 0, :light_black    => 60,
#         :red     => 1, :light_red      => 61,
#         :green   => 2, :light_green    => 62,
#         :yellow  => 3, :light_yellow   => 63,
#         :blue    => 4, :light_blue     => 64,
#         :magenta => 5, :light_magenta  => 65,
#         :cyan    => 6, :light_cyan     => 66,
#         :white   => 7, :light_white    => 67,
#         :default => 9
