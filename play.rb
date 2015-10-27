require './board'
require './player'
@board = Board.new


  # @winning.each do |array|
  #   @board_array.include?(array)
  # end

    puts "Welcome to my Tic Tac Toe Game!."
    puts "How many human players: 1 or 2?"
    entry = gets.chomp
  if entry == "1"
    puts "Player 1, please enter your name."
    name1 = gets.chomp
  elsif entry == "two"
     puts "Player 1, please enter your name."
     name1 = gets.chomp
     @player1 = Player.new(name1, @board)
     puts "Player 2, please enter your name."
     name2 = gets.chomp
     @player2 = Player.new(name2, @board)
   end
  while @board.board_array.any?{|sub_array| sub_array.include?(" ")} do

  puts "Enter a position!"
    input = gets.chomp
    @board.update_board(input)
    @board.display_board


  end

puts "YOU LOSE CARL MILLER!"
