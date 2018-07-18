require './lib/game_board.rb'
require './lib/player.rb'
require './lib/computer.rb'

class Round
  attr_reader :player, :gameboard, :computer, :current_player

  def initialize
    @game_over = false
    @player = Player.new
    @gameboard = GameBoard.new
    @computer = Computer.new
    @current_player = @player
  end

  def start
    puts welcome_message
    while @game_over == false
      puts gameboard.print_board
      print request_move

      move = receive_move
      while
        @gameboard.valid_input?(move) == false
        print "I think you might have misheard me. I said A-G please. Try again. "
        move = receive_move
      end
      @gameboard.make_move(move, @current_player)
      puts @gameboard.print_board

        # Switch player to computer
        # Computer makes valid move
        # All this is done alternatively until win condition is met or board is full
    end
  end

  def welcome_message
    "Welcome to Connect Four!\n"\
    "I happen to be a very stable computer genius. Think you can beat me?\n\n"
  end

  def first_request_move
    "\nI'll let you start first. Please choose a row (A-G) to drop your piece! "
  end

  def following_request_move
    "\nAlright, your turn. Please choose a row (A-G) to drop your piece! "
  end

  def receive_move
    gets.chomp.upcase
  end

  def switch_player
    if @current_player == @player
      @current_player = @computer
    else
      @current_player = @player
    end
  end
end
