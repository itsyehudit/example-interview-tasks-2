isFB = gets.to_i

if
  isFB%3 === 0 && isFB%5 === 0
  print "FizzBuzz"
elsif isFB%3 === 0
  print "Fizz"
elsif isFB%5 === 0
  print "Buzz"
else
  print "No FizzBuz for you, sport!"
end
