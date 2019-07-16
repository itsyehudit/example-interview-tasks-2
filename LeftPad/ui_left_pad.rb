require_relative 'left_pad'

class UILeftPad
  def initialize
    @lp_case = LeftPad.new
  end

  def left_pad_input
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

    puts @lp_case.left_pad(string_in, times_in, char_in, bool_in)
  end
end

left_pad = UILeftPad.new
left_pad.left_pad_input
