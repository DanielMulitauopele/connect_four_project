require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'
require 'pry'

class ComputerTest < MiniTest::Test
  def test_it_exists
    computer = Computer.new

    assert_instance_of Computer, computer
  end

  def test_it_starts_with_a_piece
    computer = Computer.new

    assert_equal "X", computer.piece
  end
end
