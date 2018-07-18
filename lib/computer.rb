require 'pry'

class Computer
  attr_accessor :piece

  def initialize
    @piece = "X"
  end

  def random_column
    random_letter = ("a".."g").to_a.sample.upcase
  end
end
