def fizz_buzz

  puts "Pick a number:"
  is_fb = gets.chomp
  is_fb = is_fb.gsub(/,/, '.')

  def print_fizz_buzz(is_fb)
    if
      is_fb%3 == 0 && is_fb%5 == 0
      puts "FizzBuzz"
    elsif is_fb%3 == 0
      puts "Fizz"
    elsif is_fb%5 == 0
      puts "Buzz"
    else
      puts "No FizzBuzz for you, sport!"
    end
  end

  begin
    is_fb = Float(is_fb)
  rescue
    puts "Improper value, try again."
    is_float = false
  end

  if is_float == false
    fizz_buzz
  else
    if is_fb%1 == 0
    else
      puts "Would you like to round your number #{is_fb}? Y/N"
      q = gets.chomp.downcase
      if q == "y"
        puts "Would you like to round your number #{is_fb} UP? Y/N"
        updown = gets.chomp.downcase
        if updown == "y"
          puts "Your number #{is_fb} will be rounded UP."
          is_fb = is_fb.ceil
        else
          puts "Your number #{is_fb} will be rounded DOWN."
          is_fb = is_fb.floor
        end
      end
    end
    print_fizz_buzz(is_fb)
  end
end

fizz_buzz
