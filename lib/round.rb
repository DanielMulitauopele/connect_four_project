require './lib/game_board.rb'
require './lib/player.rb'
# require './lib/computer.rb'

class Round
  attr_reader :player, :gameboard

  def initialize
    @game_over = false
    @player = Player.new
    @gameboard = GameBoard.new
    # @computer = Computer.new
    @current_player = @player
  end

  def start
    # Welcome message
    puts welcome_message
    # Print board
    puts gameboard.print_board
    # Request move
    print request_move
    # recieve move
    move = receive_move
    while
      @gameboard.valid_input?(move) == false
      print "I think you might have misheard me. I said A-G please. Try again. "
      move = receive_move
    end
    @gameboard.make_move(move)
    puts @gameboard.print_board
      # while user_input = gets.chomp
      #   case user_input
      #   when "Quit"
      #     puts "See ya!"
      #     break
      #   else
      #     puts user_input
      #   end
      # end
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

  def receive_move
    gets.chomp.upcase
  end
end
