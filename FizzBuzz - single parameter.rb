def fizzBuzz(isFB)
  if
    isFB%3 === 0 && isFB%5 === 0
    puts "FizzBuzz"
  elsif isFB%3 === 0
    puts "Fizz"
  elsif isFB%5 === 0
    puts "Buzz"
  else
    puts "No FizzBuz for you, sport!"
  end
end

puts "Pick a number:"

fizzBuzz(gets.to_i)
