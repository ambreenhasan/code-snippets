require 'colorize'

class BingoBoard

  def initialize
    # @bingo_board = Array.new(5) {Array(5.times.map{rand(1..20)})}
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
    @bingo_header = ["B", "I", "N", "G", "O"]
    @letter_index = rand(0..4)
    @number = rand(1..20)

    puts "#{@bingo_header[@letter_index]} #{@number}".colorize(:green)
    check_for_match(@letter_index, @number)
  end

  def check_for_match(drawn_letter, drawn_number)
    @bingo = @bingo_board.map do |row|
      if row[drawn_letter] == drawn_number
        row[drawn_letter] = "X"
      else
        row[drawn_letter]
      end
    end
  end

  def display_column
    @bingo
  end

  def display_prettily
    @bingo_board.each { |row| p row }
  end
end


board = BingoBoard.new

board.draw

puts "Called Column"
p board.display_column
puts "~~~~~~~~~~~~"
puts "Board"
board.display_prettily