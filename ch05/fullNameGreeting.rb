puts 'What is your first name?'
firstName = gets.chomp
puts 'Middle name? If you have none, just press enter.'
middleName = gets.chomp
puts 'Last name?'
lastName = gets.chomp

if middleName == ''
  puts 'Welcome, ' + firstName + ' ' + lastName + '!'
else
  puts 'Welcome, ' + firstName + ' ' + middleName + ' ' + lastName + '!'
end
