require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require 'pry'

class RoundTest < MiniTest::Test
  def test_it_exists
    round = Round.new

    assert_instance_of Round, round
  end

  def test_it_has_a_player
    round = Round.new
    actual = round.player

    assert_instance_of Player, actual
  end

  def test_it_has_a_gameboard
    round = Round.new
    actual = round.gameboard

    assert_instance_of GameBoard, actual
  end

  def test_it_has_a_computer_player
    round = Round.new
    actual = round.computer

    assert_instance_of Computer, actual
  end

  def test_that_it_welcomes_player
    round = Round.new
    expected = "Welcome to Connect Four!\n"\
    "I happen to be a very stable computer genius. Think you can beat me?\n\n"
    actual = round.welcome_message

    assert_equal expected, actual
  end

  def test_it_asks_for_a_move_from_player_to_start
    round = Round.new
    expected = "\nI'll let you start first. Please choose a row (A-G) to drop your piece! "
    actual = round.first_request_move

    assert_equal expected, actual
  end

  def test_it_asks_for_a_move_from_player_during_game
    round = Round.new
    expected = "\nAlright, your turn. Please choose a row (A-G) to drop your piece! "
    actual = round.following_request_move

    assert_equal expected, actual
  end
end
