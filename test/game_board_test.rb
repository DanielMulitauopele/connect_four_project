require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_board.rb'
require 'pry'

class GameBoardTest < MiniTest::Test

  def test_it_exists
    game_board = GameBoard.new

    assert_instance_of GameBoard, game_board
  end

  def test_it_rearranges_array_into_rows
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
    assert_equal expected, game_board.print_board
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

  def test_player_can_make_a_move
    game_board = GameBoard.new
    player = Player.new
    game_board.make_move("A", player)

    expected = "O"
    actual = game_board.board[0][6]

    assert_equal expected, actual
  end

  def test_a_piece_can_sit_on_another_piece
    game_board = GameBoard.new
    player = Player.new
    game_board.make_move("A", player)
    game_board.make_move("A", player)

    expected = ["A", ".", ".", ".", ".", "O", "O"]
    actual = game_board.board[0]

    assert_equal expected, actual
  end

  def test_it_knows_column_is_full
    game_board = GameBoard.new
    player = Player.new
    game_board.make_move("G", player)
    game_board.make_move("G", player)
    game_board.make_move("G", player)
    game_board.make_move("G", player)
    game_board.make_move("G", player)

    expected = true
    actual = game_board.valid_input?("G")
    assert_equal expected, actual

    game_board.make_move("G", player)

    expected_2 = false
    actual_2 = game_board.valid_input?("G")

    assert_equal expected_2, actual_2
  end
end
