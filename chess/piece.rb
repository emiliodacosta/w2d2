# require_relative "board.rb"
require 'singleton'
class Piece

  attr_accessor :color

  def initialize(color)
    @color = color

  end

  def to_s(type)

  end

  def empty?()
  end

  def symbol()
  end

  def valid_moves()
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
