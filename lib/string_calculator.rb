class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    nums = numbers.gsub("\n", ",").split(",").map(&:to_i)
    nums.sum
  end
end
