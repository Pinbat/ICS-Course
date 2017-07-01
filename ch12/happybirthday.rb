puts "Hello, I have some birthday gifts for you!.\nPlease answer in numbers, what year were you born?"
year = gets.chomp.to_i

puts "What month?"
month = gets.chomp.to_i

puts "Day?"
day = gets.chomp.to_i

while Time.local(year + 1, month, day) < Time.new
  puts "SPANK!"
  year += 1
end
