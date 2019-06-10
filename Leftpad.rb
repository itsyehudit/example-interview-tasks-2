def left_pad
  puts "Choose a word:"
  string_in = gets.chomp
  puts "Choose a number:"
  times_in = gets.to_i
  puts "Choose a character:"
  char_in = gets.chomp

  chars = char_in * times_in

  print "Your characters&word coctail is: #{chars}#{string_in}."
end

left_pad
