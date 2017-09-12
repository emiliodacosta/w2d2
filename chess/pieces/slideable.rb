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
        a = 0
        b = 0
        until a == 7 || b == -7
          subarr = []
          case dir[0]
          when > 0
            subarr.concat([dir[0] + a])
          when < 0
            subarr.concat([dir[0] - b])
          end
          case dir[1]
          when > 0
              subarr.concat([dir[1] + a])
          when < 0
              subarr.concat([dir[1] - b])
          end
          allmoves << subarr
          a += 1
          b -= 1
        end
      end
    end
    allmoves
  end

end
