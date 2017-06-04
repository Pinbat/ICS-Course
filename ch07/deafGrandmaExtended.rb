consecBye = 0
puts "YES DEAR?"
while consecBye != 3
  response = gets.chomp
  if response == "BYE"
    puts "HUH?! SPEAK UP, SONNY!"
    consecBye += 1
  elsif response == response.upcase
    puts "NO, NOT SINCE " + (rand(21)+1930).to_s + "!"
    consecBye = 0
  else
    puts "HUH?! SPEAK UP, SONNY!"
    consecBye = 0
  end
end
puts "BYE SWEETIE PIE!"
