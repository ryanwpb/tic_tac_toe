
@selection_array = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
@player_array = []
@board_array = [[" "," "," "],
                [" "," "," "],
                [" "," "," "]]


### DISPLAY THE GRID ###

def board_template
  puts " BOARD TEMPLATE"
  print "\n"
  puts "    1    2    3 "
  print "\n"
  puts "a   a1 | a2 | a3"
  puts "   --------------"
  puts "b   b1 | b2 | b3"
  puts "   --------------"
  puts "c   c1 | c2 | c3"
  print "\n"
end

board_template

def display_board
  (0..2).each do |r|
    print " "
    (0..2).each do |c|
      print @board_array[r][c]
      print " | " unless c == 2
    end
    print "\n"
    print " ---------\n" unless r == 2
  end
  print "\n"
end

display_board



### CHECK USER SELECTION ###

def row_pick(input)
  hash = { "a" => 0, "b" => 1, "c" => 2 }
  hash[input[0]]
end

def col_pick(input)
  input[1].to_i - 1
end

def update_board(input)
  @board_array[row_pick(input)][col_pick(input)] = "X"
end



while @board_array.any? {|sub_array| sub_array.include?(" ")} do

  puts "Enter a position!"
    input = gets.chomp
    update_board(input)
    display_board



end

puts "Game Over"
