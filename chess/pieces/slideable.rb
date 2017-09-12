module Slideable

  def diagonal_dirs
    [[1, 1],
    [-1, -1],
    [1, -1],
    [-1, 1]]]
  end

  def horizontal_dirs
    [[0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]]
  end

  def move_dirs
    raise "You didn't make this method."
  end

  def moves
    allmoves=[]

    self.move_dirs.each do |dir|

      if dir[0] * dir[1] == 0
        n = 0
        until n == 7 || n == -7

          if dir[0] == 0
            case dir[1]
            when > 0
              allmoves << [dir[0],dir[1] + n]
              n += 1
            when < 0
              allmoves << [dir[0],dir[1] - n]
              n -= 1
            end
          else
            case dir[0]
            when > 0
              allmoves << [dir[0] + n,dir[1]]
              n += 1
            when < 0
              allmoves << [dir[0] - n,dir[1]]
              n -= 1
            end
          end


        end

      else
        n = 0
        until n==6


  end



end
