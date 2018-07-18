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

  def test_it_has_a_name_by_default
    player = Player.new

    assert_equal "Player_1", player.name
  end

  def test_name_can_be_different
    player = Player.new
    player.name = "Billy"

    assert_equal "Billy", player.name
  end
end
