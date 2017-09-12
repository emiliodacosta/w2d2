
require_relative "../piece.rb"
require_relative "slideable.rb"

class Queen < Piece

  include Slideable

  def initialize(color, board)
    super(color, board)
    case color
    when :white
      @symbol = '♕'
    when :black
      @symbol = '♛'
    end
  end

  def move_dirs
    self.diagonal_dirs + self.horizontal_dirs
  end

end

q = Queen.new(:white)

p q
