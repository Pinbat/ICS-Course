Dir.chdir 'C:/Users/benja/Downloads/giddyupstarworms'

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

playlist = shuffle(Dir['*.mp3'])

puts "What do you want to name your playlist?"
name = gets.chomp

File.open name + ".m3u", 'w' do |f|
  playlist.each do |song|
    f.write song + "\n"
  end
end

puts "Playlist created."
