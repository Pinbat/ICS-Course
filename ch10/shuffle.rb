def shuffle array
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

input = gets.chomp
input_array = []

while input != ""
  input_array.push(input)
  input = gets.chomp
end

puts(shuffle(input_array))
