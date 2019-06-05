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

def fizz_buzz
  puts "Pick a number:"
  input = gets.chomp
  input = input.gsub(/,/, '.')

  begin
    input = Float(input)
  rescue ArgumentError => e
    puts "Improper value: #{e.class.name}, try again."
    is_float = false
  end

  if is_float == false
    fizz_buzz
  else
    if input%1 == 0
    else
      puts "Would you like to round your number #{input}? Y/N"
      q = gets.chomp.downcase
      if q == "y"
        puts "Would you like to round your number #{input} UP? Y/N"
        updown = gets.chomp.downcase
        if updown == "y"
          puts "Your number #{input} will be rounded UP."
          input = input.ceil
        else
          puts "Your number #{input} will be rounded DOWN."
          input = input.floor
        end
      end
    end
    print_fizz_buzz(input)
  end
end

fizz_buzz
