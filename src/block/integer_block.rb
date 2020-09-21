# frozen_string_literal: true

require_relative 'modulo_block.rb'

# Returns given number as string
class IntegerBlock < ModuloBlock
  def initialize
    super 1, nil, 0
  end

  def get_result_for_number(num)
    num.to_s
  end
end
