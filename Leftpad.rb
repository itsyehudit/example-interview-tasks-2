def leftPad
  stringIn = gets.chomp
  timesIn = gets.to_i
  charIn = gets.chomp

  chars = charIn * timesIn

  print "Your characters&word coctail is: #{chars}#{stringIn}."
end

leftPad
