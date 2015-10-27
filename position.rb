class Position

  def intialize
    @positions = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    @positions_covered = []
  end

  def covered
    @covered = positions.each do |c|
      
    end
  end
end

# def place(x, y, across)
#     return false unless @positions.empty?
#     if across
#       (x...x+@length).each do |i|
#         @positions << [i, y]
#       end
#     else
#       (y...y+@length).each do |j|
#         @positions << [x, j]
#       end
#     end
#   end
