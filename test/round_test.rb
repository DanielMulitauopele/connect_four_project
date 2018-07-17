require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require 'pry'

class RoundTest < MiniTest::Test
  def test_it_exists
    round = Round.new

    assert_instance_of Round, round
  end

  def test_it_asks_for_a_move_from_player
    round = Round.new
    expected = "Your turn! Please choose a row (A-G) to drop your piece!"
    actual = round.request_move

    assert_equal expected, actual
  end
  
  def test_that_it_can_receive_a_move_from_a_player
    round = Round.new
    expected = "Your turn! Please choose a row (A-G) to drop your piece!"
    actual = round.request_move

    assert_equal expected, actual
  end

end
