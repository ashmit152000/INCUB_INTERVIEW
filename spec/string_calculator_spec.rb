require_relative '../string_calculator'

RSpec.describe StringCalculator do
  it "should return 0 on empty String" do
    expect(StringCalculator.add("")).to  eq(0)
  end
end
