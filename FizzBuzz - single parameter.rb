def fizzBuzz(isFB)

  def printFizzBuzz(isFB)
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

  if isFB%1 === 0
    printFizzBuzz(isFB)
  else
    puts "Would you like to round your number #{isFB}? Y/N"
    q = gets.chomp
    if q === "y" || q === "Y"
      isFB = isFB.round
      printFizzBuzz(isFB)
    else
      printFizzBuzz(isFB)
    end
  end
end

puts "Pick a number:"

fizzBuzz(gets.to_f)
