Dir.chdir 'C:/Users/benja/Downloads'

birthdays = {}
File.read("birthdays.txt").each_line do |entry|
  entry = entry.chomp
  comma_index = 0

  while entry[comma_index] != ","
    comma_index += 1
  end

  name = entry[0..(comma_index-1)]
  birthday = entry[-12..-1]

  birthdays[name] = birthday
end

puts "Who do you want to know the birthday of? Please enter the full name."
name = gets.chomp

if birthdays[name] == nil
  puts "Sorry, couldn't find that person."
else
  puts name + "'s birthday is on " + birthdays[name] + "."
end
