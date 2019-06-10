def left_pad(string = "You are extremely lazy, Kid", times = 1, char = " ")
  puts "Choose a word:"
  string_in = gets.chomp
  puts "Choose a number:"
  times_in = gets.to_i
  puts "Choose a character:"
  char_in = gets.chomp
  puts "Would you like to have your word of choice before all the other characters? Y/N"
  bool = gets.chomp
  bool.downcase!

  if string_in == nil || string_in == ""
    string_in = string
  end

  if times_in == nil || times_in == ""
    times_in = times
  end

  if char_in == nil || char_in == ""
    char_in = char
  end

  chars = char_in * times_in

  if bool == "y"
    print "Your word&characters coctail is: #{string_in}#{chars}."
  else
    print "Your characters&word coctail is: #{chars}#{string_in}."
  end
end

left_pad
