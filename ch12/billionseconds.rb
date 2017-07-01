puts "Hello, this nifty program tells you the time you will be (or have been) one billion seconds old.\nPlease answer in numbers, what year were you born?"
year = gets.chomp.to_i

puts "What month?"
month = gets.chomp.to_i

puts "Day?"
day = gets.chomp.to_i

puts "Hour, if you know it? If not, press return."
hour = gets.chomp.to_i

puts "Minute?"
minute = gets.chomp.to_i

puts "Second?"
second = gets.chomp.to_i

birth_time = Time.local(year, month, day, hour, minute, second)

puts "At " + (birth_time + 1000000000).to_s + " you will be (or have reached) a billion seconds of age."
