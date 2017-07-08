class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @num_oranges = 0
    @alive = true
  end

  def oneYearPasses
    @num_oranges = 0

    if @age >= 20
      @alive = false
      puts "The orange tree is dead."
    end

    if @alive
      @height += 1 + rand(2)
      @age += 1
      puts "The tree is one year older."
    end

    if @alive && @age > 3
      @num_oranges += 10 + rand(11)
      puts "The tree bears fruit."
    end
  end

  def height
    if @alive
      if @height == 1
        puts "The orange tree is 1 foot tall."
      else
        puts "The orange tree is " + @height.to_s + " feet tall."
      end
    else
      puts "The orange tree was " + @height.to_s + " feet tall before it died."
    end
  end

  def age
    if @alive
      if @age == 1
        puts "The orange tree is 1 year old."
      else
        puts "The orange tree is " + @age.to_s + " years old."
      end
    else
      puts "The orange tree was " + @age.to_s + " years old before it died."
    end
  end

  def orangeCount
    if @alive
      if @num_oranges == 0
        puts "There are no oranges on the tree."
      elsif @num_oranges == 1
        puts "There is a single orange on the tree."
      else
        puts "There are " + @num_oranges.to_s + " oranges on the tree."
      end
    else
      puts "The dead orange tree has no oranges."
    end
  end

  def pickOrange
    if @alive
      if @num_oranges == 0
        puts "There are no more oranges to pick."
      else
        @num_oranges -= 1
        puts "You pick an orange from the tree."
      end
    else
      puts "You try to pick an orange from the dead tree, but find none."
    end
  end
end

tree = OrangeTree.new
puts "There is an orange tree here. What do you want to do? (pass, height, age, count, pick, or press enter to exit)"
input = gets.chomp.downcase

while input != ""
  if input == "pass"
    tree.oneYearPasses
  elsif input == "height"
    tree.height
  elsif input == "age"
    tree.age
  elsif input == "count"
    tree.orangeCount
  elsif input == "pick"
    tree.pickOrange
  else
    puts "Invalid command."
  end
  input = gets.chomp.downcase
end
