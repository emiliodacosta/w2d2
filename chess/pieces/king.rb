
require_relative "piece.rb"

class King < Piece


  def initialize(color)
    super(color)
    case color
    when :white
      @symbol = '♔'
    when :black
      @symbol = '♚'
    end
  end


end
