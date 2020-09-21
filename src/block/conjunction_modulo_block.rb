# frozen_string_literal: true

require_relative 'modulo_block.rb'
require_relative '../utils/utils.rb'

# Joins multiple ModuloBlock instances given label separator
class ConjunctionModuloBlock < ModuloBlock
  def initialize(block_array, separator)
    mod = block_array.mult_mods
    label = block_array.join_labels separator
    priority = block_array.add_priorities
    super mod, label, priority
  end
end
