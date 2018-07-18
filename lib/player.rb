class Player
  attr_accessor :piece, :name

  def initialize
    @piece = "O"
    @name = "Player_1"
  end

  def get_user_name
    puts "Please enter your name! You know, for research purposes..."
    @name = gets.chomp
  end
end
