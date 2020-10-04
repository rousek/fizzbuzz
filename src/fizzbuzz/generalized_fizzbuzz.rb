# frozen_string_literal: true

require_relative '../utils/utils.rb'

# Prints appropriate result for given array of integers and blocks
class GeneralizedFizzBuzz
  def initialize(blocks, numbers, printer, preamble, postamble)
    @blocks = blocks
    @numbers = numbers
    @printer = printer
    @preamble = preamble
    @postamble = postamble
  end

  def run
    @printer.print @preamble, false
    @numbers.each do |num|
      solve_for_number num
    end
    @printer.print @postamble, false
  end

  private

  def solve_for_number(num)
    @blocks.each do |block|
      next unless block.test_number? num

      result = block.get_result_for_number num
      @printer.print result
      break
    end
  end
end
