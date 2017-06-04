valid = true
while valid
  puts "Please enter the starting year."
  startYear = gets.chomp
  puts "Please enter the ending year."
  endYear = gets.chomp
  if startYear > endYear
    puts "Starting year cannot be greater than the ending year."
  else
    valid = false
  end
end

puts "The leap years between the two entered years are:"

newYear = startYear.to_i
while newYear != endYear.to_i + 1
  if newYear % 400 == 0
    puts newYear
  elsif newYear % 100 == 0
  elsif newYear % 4 == 0
    puts newYear
  end
  newYear += 1
end
