class LeftPad
  def left_pad(string, times, char, reverse)
    chars = char * times

    if char.length > 1
      taunt = "I\'ve asked you for *a* character, but ok:\n"
    end

    if reverse == "y"
      "#{taunt}Your word&characters coctail is: #{string}#{chars}."
    else
      "#{taunt}Your characters&word coctail is: #{chars}#{string}."
    end
  end
end
