# require_relative "board.rb"
require 'singleton'
class Piece

  attr_accessor :color


  def initialize(color, board)
    @color = color
    @board = board
  end

  def to_s(symbol)

  end

  def moves
    options = []

    #TODO write the rest of this

    options
  end

  def empty?()
  end

  def symbol()

  end

  def valid_moves()
    return false if self.color ==


  end

  def move_into_check(to_pos)
  end

end

class NullPiece < Piece
  include Singleton

  def initialize
  end

  def moves()
  end

end
