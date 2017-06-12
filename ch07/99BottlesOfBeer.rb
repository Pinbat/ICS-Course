startBottles = 99
newBottles = startBottles
while newBottles > 1
  puts newBottles.to_s + " bottles of beer on the wall, " + newBottles.to_s + " bottles of beer.\nTake one down and pass it around, " + (newBottles-1).to_s + " bottles of beer on the wall."
  newBottles -= 1
end
puts "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, 0 bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, " + startBottles.to_s + " bottles of beer on the wall."
