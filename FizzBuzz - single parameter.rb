def fizz_buzz(is_fb)

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

  def is_number(is_num)
    is_num = is_num.to_s
    /\A[+-]?\d+(\.[\d]+)?\z/.match is_num
  end

  if is_number(is_fb)
    is_fb = is_fb.to_f
    if is_fb%1 == 0
    else
      puts "Would you like to round your number #{is_fb}? Y/N"
      q = gets.chomp
      if q == "y" || q == "Y"
        puts "Would you like to round your number #{is_fb} UP? Y/N"
        updown = gets.chomp
        if updown == "y" || updown == "Y"
          puts "Your number #{is_fb} will be rounded UP."
          is_fb = is_fb.ceil
        else
          puts "Your number #{is_fb} will be rounded DOWN."
          is_fb = is_fb.floor
        end
      end
    end
    print_fizz_buzz(is_fb)
  else
    puts "Improper value, try again."
  end
end

puts "Pick a number:"

fizz_buzz(gets.chomp)
