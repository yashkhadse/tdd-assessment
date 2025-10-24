class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter)
    nums = numbers.split(delimiter).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    nums.reject { |n| n > 1000 }.sum
  end
end
