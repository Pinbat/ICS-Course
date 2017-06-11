spacing = 50
table = [["Chapter 1:  The Beginning", 1], ["Chapter 2:  The Middle", 5], ["Chapter 3:  The End", 9]]

puts 'Table of Contents'.center(spacing)
puts
table.each do |chap|
  puts chap[0].to_s + chap[1].to_s.rjust(spacing-chap[0].length)
end
