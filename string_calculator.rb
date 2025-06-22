class StringCalculator

  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /,|\n/

  # case for the custom delimiter
  if numbers.start_with?("//")
    customer_delimiter_value, numbers = numbers.split("\n") # split the delimiter and the numbers
    customer_delimiter_array = customer_delimiter_value.split("") # split the delimiter part into all it's characters
    delimiter = customer_delimiter_array[2] # fetch the custom delimiter and set it to delimiter variable
  end

  numbers_array = numbers.split(delimiter).map(&:to_i) # split the numbers and convert into integer

  numbers_array.sum
  end

  puts StringCalculator.add("1")
  puts StringCalculator.add("1,2")
  puts StringCalculator.add("1,2,3")
  puts StringCalculator.add("1\n2,3")
end
