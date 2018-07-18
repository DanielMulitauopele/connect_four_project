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

    @a_index = 6
    @b_index = 6
    @c_index = 6
    @d_index = 6
    @e_index = 6
    @f_index = 6
    @g_index = 6
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

  def make_move(column_input, current_player)
    if column_input == "A"
      @board[0][@a_index] = current_player.piece
      @a_index -= 1
    elsif column_input == "B"
      @board[1][@b_index] = current_player.piece
      @b_index -= 1
    elsif column_input == "C"
      @board[2][@c_index] = current_player.piece
      @c_index -= 1
    elsif column_input == "D"
      @board[3][@d_index] = current_player.piece
      @d_index -= 1
    elsif column_input == "E"
      @board[4][@e_index] = current_player.piece
      @e_index -= 1
    elsif column_input == "F"
      @board[5][@f_index] = current_player.piece
      @f_index -= 1
    elsif column_input == "G"
      @board[6][@g_index] = current_player.piece
      @g_index -= 1
    end
  end
end
