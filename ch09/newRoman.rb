def new_roman_numeral num
  while (num < 1 || num > 3000)
    puts "Please enter a number between 1 and 3000."
    num = gets.chomp.to_i
  end

  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10

  roman_num = "M" * thousands
  if hundreds == 9
    roman_num += "CM"
  elsif hundreds == 4
    roman_num += "CD"
  elsif hundreds >= 5
    roman_num += "D" + "C" * (hundreds % 5)
  else
    roman_num += "C" * hundreds
  end

  if tens == 9
    roman_num += "XC"
  elsif tens == 4
    roman_num += "XL"
  elsif tens >= 5
    roman_num += "L" + "X" * (tens % 5)
  else
    roman_num += "X" * tens
  end

  if ones == 9
    roman_num += "IX"
  elsif ones == 4
    roman_num += "IV"
  elsif ones >= 5
    roman_num += "V" + "I" * (ones % 5)
  else
    roman_num += "I" * ones
  end

  return roman_num
end

puts "Please enter a number between 1 and 3000."
puts(new_roman_numeral gets.chomp.to_i)
