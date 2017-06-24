def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  end

  remaining_unsorted = []
  smallest_word = unsorted_array.pop


  unsorted_array.each do |current_word|
    if current_word < smallest_word
      remaining_unsorted.push smallest_word
      smallest_word = current_word
    else
      remaining_unsorted.push current_word
    end
  end

  sorted_array.push smallest_word
  recursive_sort remaining_unsorted, sorted_array
end

input = gets.chomp
words = []

while input != ""
  words.push(input)
  input = gets.chomp
end

puts(sort(words))
