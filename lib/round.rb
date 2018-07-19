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
    introduction_segment
    while @game_over == false
      normal_player_gameplay
      did_the_player_win
    break if @game_over == true
      switch_player
      normal_computer_gameplay
      did_the_computer_win
      switch_player
    end
  end

  def introduction_segment
    @gameboard = GameBoard.new
    @current_player = @player
    @game_over = false
    puts welcome_message
    puts gameboard.print_board
    print first_request_move
  end

  def normal_player_gameplay
    move = receive_move
    while
      @gameboard.valid_input?(move) == false
      print "I think you might have misheard me. I said A-G please. Try again. "
      move = receive_move
    end
      @gameboard.make_move(move, @current_player)
      puts @gameboard.print_board
  end

  def normal_computer_gameplay
      puts "\nOk, my turn...hmmmmm..."
      sleep(2)
      computer_move = @computer.random_column
    while
      @gameboard.valid_input?(computer_move) == false
      computer_move = @computer.random_column
    end
      @gameboard.make_move(computer_move, @current_player)
      puts @gameboard.print_board
  end


  def did_the_player_win
    if @gameboard.horizontal_win? == true || @gameboard.vertical_win? == true
      puts "You win! Lucky I think. Wanna play again? (enter yes)"
      @game_over = true
      if gets.chomp == "yes"
        start
      else
        puts "Fine. See ya!"
      end
    end
  end

  def did_the_computer_win
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
