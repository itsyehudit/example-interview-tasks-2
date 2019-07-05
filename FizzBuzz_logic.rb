class Fizz_Buzz
  def print_fizz_buzz(is_fb)
    if is_fb%3 == 0 && is_fb%5 == 0
      "FizzBuzz"
    elsif is_fb%3 == 0
      "Fizz"
    elsif is_fb%5 == 0
      "Buzz"
    else
      "No FizzBuzz for you, sport!"
    end
  end
end
