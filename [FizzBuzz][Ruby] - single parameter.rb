def FizzBuzz(isFB)
  if
    isFB%3 === 0 && isFB%5 === 0
    "FizzBuzz"
  elsif isFB%3 === 0
    "Fizz"
  elsif isFB%5 === 0
    "Buzz"
  else
    "No FizzBuz for you, sport!"
  end
end

puts FizzBuzz(gets.to_i)
