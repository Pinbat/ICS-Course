def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
    'four', 'five', 'six',
    'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
    'forty', 'fifty', 'sixty',
    'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
    'fourteen', 'fifteen', 'sixteen',
    'seventeen', 'eighteen', 'nineteen']
  illions = [["hundred", 2],
             ["thousand", 3],
             ["million", 6],
             ["billion", 9],
             ["trillion", 12],
             ["quadrillion", 15],
             ["quintillion", 18],
             ["sextillion", 21],
             ["septillion", 24],
             ["octillion", 27],
             ["nonillion", 30],
             ["decillion", 33],
             ["undecillion", 36],
             ["duodecillion", 39],
             ["tredecillion", 42],
             ["quattuordecillion", 45],
             ["quindecillion", 48],
             ["sexdecillion", 51],
             ["septendecillion", 54],
             ["octodecillion", 57],
             ["novemdecillion", 60],
             ["vigintillion", 63],
             ["unvigintillion", 66],
             ["duovigintillion", 69],
             ["trevigintillion", 72],
             ["quattuorvigintillion", 75],
             ["quinvigintillion", 78],
             ["sexvigintillion", 81],
             ["septenvigintillion",	84],
             ["octovigintillion", 87],
             ["novemvigintillion", 90],
             ["trigintillion", 93],
             ["untrigintillion", 96],
             ["duotrigintillion", 99],
             ["googol", 100],
             ["tretrigintillion", 102],
             ["quattuortrigintillion", 105],
             ["quintrigintillion", 108],
             ["sextrigintillion", 111],
             ["septentrigintillion", 114],
             ["octotrigintillion", 117],
             ["novemtrigintillion", 120],
             ["quadragintillion", 123],
             ["unquadragintillion", 126],
             ["duoquadragintillion", 129],
             ["trequadragintillion", 132],
             ["quattuorquadragintillion", 135],
             ["quinquadragintillion", 138],
             ["sexquadragintillion", 141],
             ["septenquadragintillion", 144],
             ["octoquadragintillion", 147],
             ["novemquadragintillion", 150],
             ["quinquagintillion", 153],
             ["unquinquagintillion", 156],
             ["duoquinquagintillion", 159],
             ["trequinquagintillion", 162],
             ["quattuorquinquagintillion", 165],
             ["quinquinquagintillion", 168],
             ["sexquinquagintillion", 171],
             ["septenquinquagintillion", 174],
             ["octoquinquagintillion", 177],
             ["novemquinquagintillion", 180],
             ["sexagintillion", 183],
             ["unsexagintillion", 186],
             ["duosexagintillion", 189],
             ["tresexagintillion", 192],
             ["quattuorsexagintillion", 195],
             ["quinsexagintillion", 198],
             ["sexsexagintillion", 201],
             ["septensexagintillion", 204],
             ["octosexagintillion", 207],
             ["novemsexagintillion", 210],
             ["septuagintillion", 213],
             ["unseptuagintillion", 216],
             ["duoseptuagintillion", 219],
             ["treseptuagintillion", 222],
             ["quattuorseptuagintillion", 225],
             ["quinseptuagintillion", 228],
             ["sexseptuagintillion", 231],
             ["septenseptuagintillion", 234],
             ["octoseptuagintillion", 237],
             ["novemseptuagintillion", 240],
             ["octogintillion", 243],
             ["unoctogintillion", 246],
             ["duooctogintillion", 249],
             ["treoctogintillion", 252],
             ["quattuoroctogintillion", 255],
             ["quinoctogintillion", 258],
             ["sexoctogintillion", 261],
             ["septenoctogintillion", 264],
             ["octooctogintillion", 267],
             ["novemoctogintillion", 270],
             ["nonagintillion", 273],
             ["unnonagintillion", 276],
             ["duononagintillion", 279],
             ["trenonagintillion", 282],
             ["quattuornonagintillion", 285],
             ["quinnonagintillion", 288],
             ["sexnonagintillion", 291],
             ["septennonagintillion", 294],
             ["octononagintillion", 297],
             ["novemnonagintillion", 300],
             ["centillion", 303]]
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  while illions.length > 0
    pair = illions.pop
    number_str = pair[0]
    number_int = 10 ** pair[1]
    write = left/number_int # How many illions left?
    left = left - write*number_int # Subtract off those illions.
    if write > 0
      # Now here's the recursion:
      title = english_number write
      num_string = num_string + title + ' ' + number_str
      if left > 0
        # So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
      end
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end

puts "How many bottles of beer on the wall?"
startBottles = gets.chomp.to_i
newBottles = startBottles

while newBottles > 1
  puts english_number(newBottles).capitalize + " bottles of beer on the wall, " + english_number(newBottles) + " bottles of beer.\nTake one down and pass it around, " + english_number(newBottles-1) + " bottles of beer on the wall."
  newBottles -= 1
end

puts "One bottle of beer on the wall, one bottle of beer.\nTake one down and pass it around, zero bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, " + startBottles.to_s + " bottles of beer on the wall."
