class Array
  def shuffle
    array = self
    shuffled = []

    while array.length > 0
      random_number = rand(array.length)
      index = 0
      new_array = []

      array.each do |item|
        if index == random_number
          shuffled.push(item)
        else
          new_array.push(item)
        end
        index += 1
      end

      array = new_array
    end

    return shuffled
  end
end

class Integer
  def factorial
    num = self
    new_num = 1
    while num > 1
      new_num *= num
      num -= 1
    end
    new_num
  end

  def new_roman_numeral
    num = self
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
end

puts "Shuffle test, please enter items and enter nothing when done."
input = gets.chomp
input_array = []

while input != ""
  input_array.push(input)
  input = gets.chomp
end

puts input_array.shuffle

puts "Factorial test, please enter a number."

input = gets.chomp.to_i
puts input.factorial

puts "Roman numeral test, please enter a number."

input = gets.chomp.to_i
puts input.new_roman_numeral
