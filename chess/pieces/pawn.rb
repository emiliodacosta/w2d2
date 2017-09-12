
require_relative "piece.rb"



class Pawn < Piece




  def initialize(color)
    super(color)
    case color
    when :white
      @symbol = '♙'
    when :black
      @symbol = '♟'
    end
  end


end
