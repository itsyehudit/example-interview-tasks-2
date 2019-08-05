require_relative '../fizz_buzz'

RSpec.describe FizzBuzz do
  it "checks if input is divisible by 3, 5 or 15" do
    fizz = FizzBuzz.new
    input_fizz = 3

    buzz = FizzBuzz.new
    input_buzz = 5

    fizz_buzz = FizzBuzz.new
    input_fizz_buzz = 15

    no_fizz_buzz = FizzBuzz.new
    input_no_fizz_buzz = 7

    expect(fizz.print_fizz_buzz(input_fizz)).to eq("Fizz")
    expect(buzz.print_fizz_buzz(input_buzz)).to eq("Buzz")
    expect(fizz_buzz.print_fizz_buzz(input_fizz_buzz)).to eq("FizzBuzz")
    expect(no_fizz_buzz.print_fizz_buzz(input_no_fizz_buzz)).to eq("No FizzBuzz for you, sport!")
  end
end
