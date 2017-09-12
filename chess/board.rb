require_relative "piece.rb"
require "byebug"
class BoardError < StandardError
end

class Board

  attr_reader :grid

  def initialize
    @grid = []
    Board.make_starting_grid(@grid)
  end

#   Array.new(8){Array.new(8)}

  def self.make_starting_grid(grid)
    black_rows = Array.new(2){Array.new(8)}
    black_rows.each_index do |i|
      black_rows[i].each_index do |j|
        black_rows[i][j] = Piece.new(:black)
      end
    end
    empty_rows = Array.new(4){Array.new(8)}
    empty_rows.each_index do |i|
      empty_rows[i].each_index do |j|
        empty_rows[i][j] = NullPiece.instance
      end
    end
    white_rows = Array.new(2){Array.new(8)}
    white_rows.each_index do |i|
      white_rows[i].each_index do |j|
        white_rows[i][j] = Piece.new(:white)
      end
    end
    grid.concat(black_rows + empty_rows + white_rows)

  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos,val)
    row, col = pos
    @grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)

    if self[start_pos].is_a?(NullPiece)
      raise BoardError.new ("There is no piece at #{start_pos}.")
    elsif (end_pos.first < 0) || (end_pos.first > 7) || (end_pos.last < 0) || (end_pos.last > 7)
      raise BoardError.new ("This piece cannot move to #{end_pos}.")
    end
    self[end_pos] = self[start_pos]
    # debugger
    self[start_pos] = NullPiece.instance
  end

  def in_bounds?(pos)
    return false if (pos.first < 0) || (pos.first > 7) || (pos.last < 0) || (pos.last > 7)
    true
  end

end


a = Board.new
p a.in_bounds?([0,0])
p a.in_bounds?([9,9])
p @cursor_pos
# puts
# p a[[1,2]]
# puts
# p a.move_piece([0,0],[1,2])
# puts
# p a[[0,0]]
# puts
# p a[[1,2]]
