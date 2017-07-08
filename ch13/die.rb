class Die
  def roll
    1 + rand(6)
  end

  def cheat
    puts "What do you want the die to show?"
    input = gets.chomp.to_i
    while input < 1 || input > 6
      puts "This is a six-sided die, try again!"
      input = gets.chomp.to_i
    end
    input
  end
end

# Let's make a couple of dice...
dice = [Die.new, Die.new]
# ...and roll them.
dice.each do |die|
  puts die.roll
end

dice.each do |die|
  puts die.cheat
end
