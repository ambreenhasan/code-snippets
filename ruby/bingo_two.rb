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
    @bingo_header = ["B", "I", "N", "G", "O"]
  end

  def player
    draw until horizontal_match || vertical_match || diagonal_matches
  end

  def draw
    @bingo_header.length.times do |i|
        case @bingo_header[i]
        when "B"
          @number = rand(1..15)
        when "I"
          @number = rand(16..30)
        when "N"
          @number = rand(31..45)
        when "G"
          @number = rand(46..60)
        when "O"
          @number = rand(61..75)
        end
      @letter_index = rand(0..4)
      puts "#{@bingo_header[i]} #{@number}"
      insert_match(i, @number)
    end
  end

  def insert_match(drawn_letter, drawn_number)
     @bingo = @bingo_board.map do |row|
      if row[drawn_letter] == drawn_number
        row[drawn_letter] = "X"
      else
        row[drawn_letter]
      end
    end
  end

  def horizontal_match
    "Bingo" if @bingo_board.any? {|row| row.all? {|nums| nums == "X"}}
  end

  def vertical_match
    x_counter = []
    @bingo_board.each do |row|
      x_counter << row[@letter_index] if row[@letter_index] == "X"
    end
    "Bingo" if x_counter.length == 5
  end

  def diagonal_matches
    diagonal_match || diagonal_match_reversed
  end

  def diagonal_match
  end

  def diagonal_match_reversed
  end

  def to_s
    @bingo_board.map {|row| row.join(" ")}.join("\n")
  end
end

board = BingoBoard.new
board.draw
# board.vertical_match
board.player
puts board