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
    assert_equal expected, game_board.transpose_the_board
  end
  def test_it_arranges_array_into_board
    game_board = GameBoard.new
    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n"
    assert_equal expected, game_board.print_blank_board
  end

  def test_an_input_is_valid
    game_board = GameBoard.new
    expected = true
    actual = game_board.valid_input?("A")

    assert_equal expected, actual
  end

  def test_an_input_is_invalid
    game_board = GameBoard.new
    expected = false
    actual = game_board.valid_input?("Z")

    assert_equal expected, actual
  end
  
  def test_a_space_is_valid
    game_board = GameBoard.new
    expected = true
    actual = game_board.valid_space?(0)

    assert_equal expected, actual
  end

  def test_it_can_make_a_move
    game_board = GameBoard.new
    game_board.make_move("A")

    expected = "X"
    actual = game_board.board[0][6]

    assert_equal expected, actual
  end

end
