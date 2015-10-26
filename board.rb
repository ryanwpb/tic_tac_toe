
  puts "a1 | a2| a3"
  puts "___________"
  puts "b1 | b2| b3"
  puts "___________"
  puts "c1 | c2| c3"
      print "\n"

@board_array = [["","",""],
               ["","",""],
               ["","",""]
             ]

  def update_board(input)
    @board_array[x_of(input)][y_of(input)] = "X"
  end

  puts "Enter a Position!"
  play = gets.chomp

  positions = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

  if positions.include?(play)
    puts "Ata_boy"
  else
    puts "That position is not availble!"
  end
  while @board_array.any? {|sub_array| sub_array.include?("")} do
end
