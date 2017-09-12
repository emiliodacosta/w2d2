require_relative "../piece.rb"
require_relative "slideable.rb"

class Bishop < Piece

  def initialize(color)
    super(color)
    case color
    when :white
      @symbol = '♗'
    when :black
      @symbol = '♝'
    end
  end


def move_dirs
  arr =
  [[1, 1],
  [1, -1],
  [-1, 1],
  [-1, -1]]

  arr
end



end
