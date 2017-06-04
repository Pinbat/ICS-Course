spacing = 50
chap_1 = 'Chapter 1:  The Beginning'
chap_2 = 'Chapter 2:  The Middle'
chap_3 = 'Chapter 3:  The End'
puts 'Table of Contents'.center(spacing)
puts
puts chap_1 + '1'.rjust(spacing-chap_1.length)
puts chap_2 + '5'.rjust(spacing-chap_2.length)
puts chap_3 + '9'.rjust(spacing-chap_3.length)
