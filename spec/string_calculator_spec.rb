require_relative '../string_calculator'

RSpec.describe StringCalculator do
  it "should return 0 on empty String" do
    expect(StringCalculator.add("")).to  eq(0)
  end

  it "should add two numbers after ," do
    expect(StringCalculator.add("1,2")).to eq(3)
  end

  it "should add all numbers after ," do
    expect(StringCalculator.add("1,2,3")).to eq(6)
  end

  it "should add all numbers after \n as delimiter" do
    expect(StringCalculator.add("1\n2,3")).to eq(6)
  end

  it "should also add all the numbers in the case of custom delimiter" do
      expect(StringCalculator.add("//;\n2;3")).to eq(5)
  end

  it "should raise error in case of presence of negative numbers" do
    expect {
      StringCalculator.add("-1,2") }.to raise_error("Negative number not allowed -1")
  end

end
