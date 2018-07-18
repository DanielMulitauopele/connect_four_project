require './lib/player.rb'

class GameBoard
  attr_accessor :board

  def initialize
    @board = [
      ["A", ".", ".", ".", ".", ".", "."],
      ["B", ".", ".", ".", ".", ".", "."],
      ["C", ".", ".", ".", ".", ".", "."],
      ["D", ".", ".", ".", ".", ".", "."],
      ["E", ".", ".", ".", ".", ".", "."],
      ["F", ".", ".", ".", ".", ".", "."],
      ["G", ".", ".", ".", ".", ".", "."]
    ]
  end

  def transpose_the_board
    arranged_board_array = @board.transpose
    joined_setup_array = arranged_board_array.map do |array|
      array.join
    end
  end

  def print_blank_board
    final_board = transpose_the_board.map do |row|
      row + "\n"
    end
    final_board.join
  end

  def valid_input?(column)
    ["A", "B", "C", "D", "E", "F", "G"].include?(column)
  end

  def make_move(column)
    if column == "A"
      @board[0][6] = "X"
    elsif column == "B"
      @board[1][6] = "X"
    elsif column == "C"
      @board[2][6] = "X"
    elsif column == "D"
      @board[3][6] = "X"
    elsif column == "E"
      @board[4][6] = "X"
    elsif column == "F"
      @board[5][6] = "X"
    elsif column == "G"
      @board[6][6] = "X"
    end
  end
end
