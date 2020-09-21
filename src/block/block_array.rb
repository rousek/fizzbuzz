# frozen_string_literal: true

require_relative '../utils/utils.rb'

# Array of ModuloBlock with additional features
class BlockArray < Array
  def initialize(*blocks)
    super 0
    replace(blocks)
    sort_by_priority!
  end

  def add_priorities
    FizzBuzzUtils.add_all map(&:priority)
  end

  def mult_mods
    FizzBuzzUtils.mult_all map(&:mod)
  end

  def join_labels(separator)
    map(&:label).join separator
  end

  private

  def sort_by_priority!
    sort! { |a, b| b.priority <=> a.priority }
  end
end
