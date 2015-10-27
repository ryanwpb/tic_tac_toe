require './position'
class Board
  attr_reader :board_array
  def initialize
    @positions_array = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    @player_array = []
    @board_array = [[" "," "," "],
                    [" "," "," "],
                    [" "," "," "]]

    @Winning = [
      [0,0],[0,1],[0,2],
      [1,0],[1,1],[1,2],
      [2,0],[2,1],[2,2],
      [0,0],[1,0],[2,0],
      [0,1],[1,1],[2,1],
      [0,2],[1,2],[2,2],
      [0,0],[1,1],[2,2],
      [0,2],[1,1],[2,0],
    ]
  end




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




  ### CHECK USER SELECTION ###

  def row_pick(input)
    hash = { "a" => 0, "b" => 1, "c" => 2 }
    hash[input[0]]
  end

  def col_pick(input)
    input[1].to_i - 1
  end

  def update_board(input)
   if @board_array[row_pick(input)][col_pick(input)] == " "
      @board_array[row_pick(input)][col_pick(input)] = "x"
   elsif
     @board_array[row_pick(input)][col_pick(input)] == "x"
     @board_array[row_pick(input)][col_pick(input)] = "o"
   end

     puts "This space already taken!"
   end




  # while @board_array.any?{|sub_array| sub_array.include?(" ")} do
  #   @winning.each do |array|
  #     @board_array.include?(array)
  #   end

end
