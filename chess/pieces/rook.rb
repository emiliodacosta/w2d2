require_relative "../piece.rb"
require_relative "slideable.rb"

class Rook < Piece

  def initialize(color)
    super(color)
    case color
    when :white
      @symbol = '♖'
    when :black
      @symbol = '♜'
    end
  end

  def move_dirs

    arr =
    [[0, 1],
    [1, 0],
    [-1, 0],
    [0, -1]]

    arr
  end

end
