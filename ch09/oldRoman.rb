def old_roman_numeral num
  while (num < 1 || num > 3000)
    puts "Please enter a number between 1 and 3000."
    num = gets.chomp.to_i
  end

  roman_num = "M" * (num / 1000)
  roman_num += "D" * (num % 1000 / 500)
  roman_num += "C" * (num % 500 / 100)
  roman_num += "L" * (num % 100 / 50)
  roman_num += "X" * (num % 50 / 10)
  roman_num += "V" * (num % 10 / 5)
  roman_num += "I" * (num % 5)

  return roman_num
end

puts "Please enter a number between 1 and 3000."
puts(old_roman_numeral gets.chomp.to_i)
