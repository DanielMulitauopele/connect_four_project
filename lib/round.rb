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
    # Opening messages
    @gameboard = GameBoard.new
    @current_player = @player
    @game_over = false
    puts welcome_message
    puts gameboard.print_board
    print first_request_move

    # This begins the loop for turn-taking
    while @game_over == false
        move = receive_move
      while
        @gameboard.valid_input?(move) == false
        print "I think you might have misheard me. I said A-G please. Try again. "
        move = receive_move
      end
        @gameboard.make_move(move, @current_player)
        puts @gameboard.print_board
          if @gameboard.horizontal_win? == true || @gameboard.vertical_win? == true
            puts "You win! Lucky I think. Wanna play again? (enter yes)"
            @game_over = true
            if gets.chomp == "yes"
              start
            else
              puts "Fine. See ya!"
              break
            end
          end
        switch_player
        puts "\nOk, my turn...hmmmmm..."
        sleep(3)
        computer_move = @computer.random_column
      while
        @gameboard.valid_input?(computer_move) == false
        computer_move = @computer.random_column
      end
        @gameboard.make_move(computer_move, @current_player)
        puts @gameboard.print_board
          if @gameboard.horizontal_win? == true || @gameboard.vertical_win? == true
            puts "I win! I'll let you try again if you're nice."
            @game_over = true
            puts "Wanna play again? Enter 'yes' to get rekt again."
            if gets.chomp == "yes"
              start
            else
              puts "Fine. See ya!"
            end
          else
            puts following_request_move
          end
        switch_player
    end
  end

  def welcome_message
    "Welcome to Connect Four!\n"\
    "I happen to be a very stable computer genius. Think you can beat me?\n"
  end

  def first_request_move
    "\nI'll let you start first. Please choose a row (A-G) to drop your piece! "
  end

  def following_request_move
    "\nAlright, your turn. "
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
