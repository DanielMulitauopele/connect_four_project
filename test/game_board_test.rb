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

  def test_it_can_add_new_checkers
    game_board = GameBoard.new
    new_checker = Checker.new

    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\nnew_checker......\n"
    actual = game_board.add_checker(row)

    assert_equal expected, actual
  end
  def test_it_can_stack_checkers_on_top_of_each_other
    skip
    game_board = GameBoard.new
    checker_1 = Checker.new
    checker_2 = Checker.new

    expected = "ABCDEFG\n.......\n.......\n.......\n.......\nchecker_2......\nchecker_1......\n"
    actual = game_board.add_checker(row)

    assert_equal expected, actual
  end
  def test_it_can_reject_a_checker_in_a_full_column
    skip
    game_board = GameBoard.new
    checker_1 = Checker.new("Red")
    checker_2 = Checker.new("Black")
    checker_3 = Checker.new("Red")
    checker_4 = Checker.new("Black")
    checker_5 = Checker.new("Red")
    checker_6 = Checker.new("Black")

    expected = "ABCDEFG\nchecker_6......\nchecker_5......\nchecker_4......\nchecker_3......\nchecker_2.....\nchecker_1......\n"
    actual = game_board.add_checker(row)

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
