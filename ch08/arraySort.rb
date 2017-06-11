input = gets.chomp
words = []

while input != ""
  words.push(input)
  input = gets.chomp
end

puts words.sort.join(", ")
