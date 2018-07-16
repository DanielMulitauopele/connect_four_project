require 'minitest/autorun'
require 'minitest/pride'

class GameBoardTest < MiniTest::Test

  def test_it_exists
    game_board = GameBoard.new

    assert_instance_of GameBoard, game_board
  end

  def test_it_starts_with_empty_spaces

  end
  def test_it_can_check_if_a_column_is_full

  end
  def test_it_can_hold_new_pieces

  end
  def test_it_can_stack_pieces_on_top_of_each_other

  end
  def test_win_condition_after_4_in_a_row

  end
  def test_win_condition_after_4_in_a_column

  end
  def test_win_condition_after_4_diagonal

  end
  def test_it_can_end_in_a_draw

  end
  def test_it_print_board_after_a_turn_completes

  end
end
