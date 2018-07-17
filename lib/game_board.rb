class GameBoard
  attr_accessor :board

  def initialize
    @board = original_board
  end

  def board_array_transpose
    board_array_details = [
      ["A", ".", ".", ".", ".", ".", "."],
      ["B", ".", ".", ".", ".", ".", "."],
      ["C", ".", ".", ".", ".", ".", "."],
      ["D", ".", ".", ".", ".", ".", "."],
      ["E", ".", ".", ".", ".", ".", "."],
      ["F", ".", ".", ".", ".", ".", "."],
      ["G", ".", ".", ".", ".", ".", "."]
    ]

    arranged_board_array = board_array_details.transpose
    joined_setup_array = arranged_board_array.map do |array|
      array.join
    end
  end

  def print_blank_board
    board_array_joined = board_array_transpose
    final_board = board_array_joined.map do |row|
      row + "\n"
    end
      return final_board.join
  end
end
