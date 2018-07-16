require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board.rb'
require 'pry'

class GameBoardTest < MiniTest::Test

  def test_it_exists
    game_board = GameBoard.new

    assert_instance_of GameBoard, game_board
  end

  #This is the integration test
  def test_it_can_receive_a_piece_and_print_new_board
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end

  def test_it_rearranges_array_into_columns
    game_board = GameBoard.new
    expected = ["ABCDEFG",
      ".......", ".......",
      ".......", ".......",
      ".......", "......."]
    assert_equal expected, game_board.board_array_transpose
  end
  def test_it_arranges_array_into_board
    game_board = GameBoard.new
    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
    assert_equal expected, game_board.original_board
  end

  def test_it_can_add_new_pieces
    game_board = GameBoard.new
    new_piece = GamePiece.new

    assert_equal expected, actual
  end
  def test_it_can_stack_pieces_on_top_of_each_other
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_it_can_reject_a_piece_in_a_full_column
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_win_condition_after_4_in_a_row
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_win_condition_after_4_in_a_column
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_win_condition_after_4_diagonal
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_it_can_end_in_a_draw
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
  def test_it_print_board_after_a_turn_completes
    skip
    game_board = GameBoard.new

    assert_equal expected, actual
  end
end
