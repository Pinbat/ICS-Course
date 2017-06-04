puts "YES DEAR?"
response = gets.chomp
while response != "BYE"
  if response == response.upcase
    puts "NO, NOT SINCE " + (rand(21)+1930).to_s + "!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
  response = gets.chomp
end

puts "BYE SWEETIE PIE!"
