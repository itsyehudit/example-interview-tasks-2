class Left_Pad
  def left_pad(string, times, char, bool)
    chars = char * times

    if char.length > 1
      taunt = "I\'ve asked you for *a* character, but ok:\n"
    end

    if bool == "y"
      "#{taunt}Your word&characters coctail is: #{string}#{chars}."
    else
      "#{taunt}Your characters&word coctail is: #{chars}#{string}."
    end
  end
end

lp_case = Left_Pad.new

puts "Choose a word:"
string_in = gets.chomp
puts "Choose a number:"
times_in = gets.to_i
puts "Choose a character:"
char_in = gets.chomp
puts "Would you like to have your word of choice before all the other characters? Y/N"
bool_in = gets.chomp
bool_in.downcase!

if string_in == ""
  string_in = "You are extremely lazy, Kid"
end

if times_in == ""
  times_in = 1
end

if char_in == ""
  char_in = " "
end

puts lp_case.left_pad(string_in, times_in, char_in, bool_in)
