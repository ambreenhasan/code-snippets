# Bingo Board Scorer

class BingoBoard
  def initialize
    @bingo_board = Array.new(5) {
      Array(5.times.map do |i|
        if i == 0
          rand(1..15)
        elsif i == 1
          rand(16..30)
        elsif i == 2
          rand(31..45)
        elsif i == 3
          rand(46..60)
        elsif i == 4
          rand(61..75)
        end
      end
      )}
  end

  def draw
  end

  def player
  end

  def check_horizontal
  end

  def check_diagonal
  end

  def check_vertical
  end

  def to_s
    @bingo_board
  end
end

board = BingoBoard.new

board