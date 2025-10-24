class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    nums = numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)
    nums.sum
  end
end
