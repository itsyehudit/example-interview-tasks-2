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

  def isNumber(isNum)
    isNum = isNum.to_s
    /\A[+-]?\d+(\.[\d]+)?\z/.match isNum
  end

  if isNumber(isFB)
    isFB = isFB.to_f
    if isFB%1 === 0
    else
      puts "Would you like to round your number #{isFB}? Y/N"
      q = gets.chomp
      if q === "y" || q === "Y"
        puts "Would you like to round your number #{isFB} UP? Y/N"
        updown = gets.chomp
        if updown === "y" || updown === "Y"
          puts "Your number #{isFB} will be rounded UP."
          isFB = isFB.ceil
        else
          puts "Your number #{isFB} will be rounded DOWN."
          isFB = isFB.floor
        end
      end
    end
    printFizzBuzz(isFB)
  else
    puts "Improper value, try again."
  end
end

puts "Pick a number:"

fizzBuzz(gets.chomp)
