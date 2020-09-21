# frozen_string_literal: true

# Prints Fizz, Buzz, FizzBuzz or number separated by separator.
class ResultPrinter
  def initialize(separator, out = $stdout)
    @first = true
    @out = out
    @separator = separator
  end

  def print(value, use_separator = true)
    if use_separator
      if !@first
        @out.print @separator
      else
        @first = false
      end
    end
    @out.print value
  end
end
