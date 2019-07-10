require_relative '../logic'

RSpec.describe Left_Pad do
  it "combines input string with characters of choice repeated by specified number of times" do
    left = Left_Pad.new
    string_l = "lefty"
    times_l = 3
    char_l = "x"
    bool_l = "y"

    right = Left_Pad.new
    string_r = "righty"
    times_r = 4
    char_r = "x"
    bool_r = "n"

    taunted = Left_Pad.new
    string_t = "taunting"
    times_t = 2
    char_t = "xyz"
    bool_t = "n"


    expect(left.left_pad(string_l, times_l, char_l, bool_l)).to eq("Your word&characters coctail is: leftyxxx.")
    expect(right.left_pad(string_r, times_r, char_r, bool_r)).to eq("Your characters&word coctail is: xxxxrighty.")
    expect(taunted.left_pad(string_t, times_t, char_t, bool_t)).to eq("I\'ve asked you for *a* character, but ok:\nYour characters&word coctail is: xyzxyztaunting.")
  end
end
