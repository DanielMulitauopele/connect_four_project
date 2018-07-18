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
    # Welcome message
    puts welcome_message
    # Print board
    puts gameboard.print_blank_board
    # Request move
    print request_move
    # recieve move
      while user_input = gets.chomp
        case user_input
        when "Quit"
          puts "See ya!"
          break
        else
          puts user_input
        end
      end
      # Verify that it was a valid move
      # Confirm the move, and print the new board
      # Switch player to computer
      # Computer makes valid move
      # All this is done alternatively until win condition is met or board is full
  end

  def welcome_message
    "Welcome to Connect Four!\n"\
    "I happen to be a very stable computer genius. Think you can beat me?\n\n"
  end

  def request_move
    "\nI'll let you start first. Please choose a row (A-G) to drop your piece! "
  end
end
