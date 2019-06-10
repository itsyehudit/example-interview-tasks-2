def leftPad
  puts "Choose a word:"
  stringIn = gets.chomp
  puts "Choose a number:"
  timesIn = gets.to_i
  puts "Choose a character:"
  charIn = gets.chomp

  chars = charIn * timesIn

  print "Your characters&word coctail is: #{chars}#{stringIn}."
end

leftPad
