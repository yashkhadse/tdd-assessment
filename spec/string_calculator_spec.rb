require 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself when one number is given" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum for two comma-separated numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "returns the sum for an unknown quantity of numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handles newlines as delimiters" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "throws an exception for negative numbers" do
      expect { StringCalculator.add("1,-2,3,-5") }
        .to raise_error("negative numbers not allowed: -2, -5")
    end

    it "ignores numbers greater than 1000" do
      expect(StringCalculator.add("2,1001")).to eq(2)
    end
  end
end
