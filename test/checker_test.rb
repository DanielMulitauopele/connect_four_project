require 'minitest/autorun'
require 'minitest/pride'
require './lib/checker.rb'

class CheckerTest < MiniTest::Test
  def test_it_exists
    checker = Checker.new("Red")

    assert_instance_of Checker, checker
  end

  def test_that_it_can_be_assigned_a_color_at_the_start
    checker = Checker.new("Red")

    assert_equal "Red", checker.color
  end
end
