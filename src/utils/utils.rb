# frozen_string_literal: true

# Utilities that would have to be monkey patched
class FizzBuzzUtils
  def self.range(start_index, end_index)
    (start_index..end_index)
  end

  def self.divisible?(num, mod)
    (num % mod).zero?
  end

  def self.mult_all(numbers)
    numbers.inject(1) { |acc, num| acc * num }
  end

  def self.add_all(numbers)
    numbers.inject(0) { |acc, num| acc + num }
  end
end
