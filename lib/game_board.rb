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

  def print_board
    final_board = transpose_the_board.map do |row|
      row + "\n"
    end
    final_board.join
  end

  def valid_input?(column_input)
    ["A", "B", "C", "D", "E", "F", "G"].include?(column_input)
  end

  def valid_space?(array_index)
      board[array_index].include?(".")
  end

  def make_move(column_input)
    if column_input == "A"
      @board[0][6] = "X"
    elsif column_input == "B"
      @board[1][6] = "X"
    elsif column_input == "C"
      @board[2][6] = "X"
    elsif column_input == "D"
      @board[3][6] = "X"
    elsif column_input == "E"
      @board[4][6] = "X"
    elsif column_input == "F"
      @board[5][6] = "X"
    elsif column_input == "G"
      @board[6][6] = "X"
    end
  end
end
