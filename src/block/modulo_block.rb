# frozen_string_literal: true

# Tests divisibility and returns given label
class ModuloBlock
  def initialize(mod, label, priority)
    @mod = mod
    @label = label
    @priority = priority
  end

  attr_reader :mod

  attr_reader :label

  attr_reader :priority

  def test_number?(num)
    FizzBuzzUtils.divisible? num, @mod
  end

  def get_result_for_number(_num)
    @label
  end
end
