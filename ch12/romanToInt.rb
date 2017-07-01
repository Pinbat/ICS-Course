def roman_to_int input
  values = {}
  values["i"] = 1
  values["v"] = 5
  values["x"] = 10
  values["l"] = 50
  values["c"] = 100
  values["d"] = 500
  values["m"] = 1000

  index = input.length - 1
  total = 0
  previous = 0

  while index >= 0
    char = input[index]
    index -= 1
    value = values[char.downcase]

    if value == nil
      puts "Roman numeral entered is invalid."
      exit
    end

    if value < previous
      value *= -1
    else
      previous = value
    end

    total += value
  end
  return total
end

puts "Please enter a new-style Roman numeral."
puts (roman_to_int gets.chomp)
