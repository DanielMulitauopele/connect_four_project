require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require 'pry'

class PlayerTest < MiniTest::Test
  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  endm

  def test_it_starts_with_pieces

  end
end
