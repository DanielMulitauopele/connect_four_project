require './lib/game_board.rb'
require './lib/player.rb'
# require './lib/computer.rb'

class Round
  attr_reader :player, :gameboard

  def initialize
    @player = Player.new
    @gameboard = GameBoard.new
  end

  def start
      # How do I want the round to work?

      # Welcome message
    puts welcome_message
    puts gameboard.print_blank_board

      # Ask the player for their name
        #
      # Request move
      # recieve move
      # Verify that it was a valid move
      # Confirm the move, and print the new board
      # Switch player to computer
      # Computer makes valid move
      # All this is done alternatively until win condition is met or board is full
  end

  def welcome_message
    "Welcome to Connect Four!\n"\
    "I happen to be a very stable computer genius.\n"\
    "Think you can beat me?\n\n"
  end

  def request_move
    "Your turn! Please choose a row (A-G) to drop your piece!"
  end
end
