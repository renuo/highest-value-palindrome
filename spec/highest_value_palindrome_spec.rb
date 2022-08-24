require 'highest_value_palindrome.rb'

RSpec.describe "highest_value_palindrome" do
  it "outputs 3993 given 3943 and 1" do
    expect(highest_value_palindrome("3993", 1)).to eq("3993")
  end

  it "outputs 992299 given 092282 and 3" do
    expect(highest_value_palindrome("092282", 3)).to eq("992299")
  end

  it "outputs nil given 0011 and 1" do
    expect(highest_value_palindrome("0011", 1)).to eq(nil)
  end

  it "outputs 11011 given 10011 and 1" do
    expect(highest_value_palindrome("10011", 1)).to eq("11011")
  end

  it "outputs 91019 given 10011 and 3" do
    expect(highest_value_palindrome("10011", 3)).to eq("91019")
  end

  it "outputs 9199919 given 1111911 and 4" do
    expect(highest_value_palindrome("1111911", 4)).to eq("9199919")
  end

  it "outputs 999 given 329 and 2" do
    expect(highest_value_palindrome("329", 2)).to eq("999")
  end

  it "outputs 992299 given 932239 and 2" do
    expect(highest_value_palindrome("932239", 2)).to eq("992299")
  end

  it "outputs 91199119 given 11119111 and 4" do
    expect(highest_value_palindrome("11119111", 4)).to eq("91199119")
  end

  it "outputs 91177119 given 11117111 and 3" do
    expect(highest_value_palindrome("11117111", 3)).to eq("91177119")
  end

  it "outputs 9991999 given 9711319 and 4" do
    expect(highest_value_palindrome("9711319", 4)).to eq("9991999")
  end

  it "outputs 9911199 given 1111111 and 4" do
    expect(highest_value_palindrome("1111111", 4)).to eq("9911199")
  end

  it "outputs 929394959493929 given 128392759430124 and 8" do
    expect(highest_value_palindrome("128392759430124", 8)).to eq("929394959493929")
  end

  it "outputs 898 given 818 and 1" do
    expect(highest_value_palindrome("818", 1)).to eq("898")
  end

  it "outputs 9999 given 1111 and 100" do
    expect(highest_value_palindrome("1111", 100)).to eq("9999")
  end

  it "outputs 1221 given 1221 and 0" do
    expect(highest_value_palindrome("1221", 0)).to eq("1221")
  end
end
