require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require 'pry'

class PlayerTest < MiniTest::Test
  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_it_starts_with_a_piece
    player = Player.new

    assert_equal "O", player.piece
  end
end
