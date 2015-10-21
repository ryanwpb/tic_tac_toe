
  puts "a1 | a2| a3"
  puts "___________"
  puts "b1 | b2| b3"
  puts "___________"
  puts "c1 | c2| c3"
      print "\n"

puts "Enter a Position!"
place = gets.chomp
positions = ["a1","a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]

if positions.include?(place)
  puts "Ata_boy!"
else
  puts "That position is not availble!"
end
