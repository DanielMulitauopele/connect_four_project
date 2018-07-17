require './lib/game_board.rb'
require './lib/player.rb'
# require './lib/computer.rb'

class Round
  def initialize

  end

  def welcome_message
    puts "Welcome to Connect Four! I happen to be a very
    stable computer genius. Think you can beat me?\n\n"
  end

  def request_move
    "Your turn! Please choose a row (A-G) to drop your piece!"
  end
end
