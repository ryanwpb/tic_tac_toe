require './board'
@board = Board.new

while @board.board_array.any?{|sub_array| sub_array.include?(" ")} do
  # @winning.each do |array|
  #   @board_array.include?(array)
  # end
  puts "Enter a position!"
    input = gets.chomp
    @board.update_board(input)
    @board.display_board
end
puts "Game Over"
