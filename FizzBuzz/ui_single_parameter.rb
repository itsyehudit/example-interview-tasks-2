require_relative 'fizz_buzz'

class UISingleParameter
  def initialize
    @fb_case = FizzBuzz.new
  end

  def fizz_buzz_input
    puts "Pick a number:"
    input = gets.chomp
    input = input.gsub(/,/, '.')

    begin
      input = Float(input)
    rescue ArgumentError => e
      puts "Improper value: #{e.class.name}, try again."
      @fb_case.print_fizz_buzz(input)
      exit
    end

    unless input%1 == 0
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
    puts @fb_case.print_fizz_buzz(input)
  end
end

fizz_buzz = UISingleParameter.new
fizz_buzz.fizz_buzz_input
