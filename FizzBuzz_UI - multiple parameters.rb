require_relative 'FizzBuzz_logic'

fb_case = Fizz_Buzz.new

def fizz_buzz(input, fb_case)
  begin
    input = Float(input)
  rescue ArgumentError => e
    puts "#{input} is an improper value: #{e.class.name}, try again."
    is_float = false
  end

  if is_float == false
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
    puts fb_case.print_fizz_buzz(input)
  end
end

array_fb = []

loop do
  puts "Pick a number:"
  input = gets.chomp
  input = input.gsub(/,/, '.')
  array_fb.push(input)
  puts "Would you like to add another number? Y/N?"
  repeat = gets.chomp.downcase
  break if repeat != "y"
end

array_fb.each do |element|
  fizz_buzz(element, fb_case)
end
