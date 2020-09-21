# frozen_string_literal: true

require_relative '../config/config_loader.rb'

require_relative '../utils/result_printer.rb'

require_relative 'standard_fizzbuzz.rb'

# Separates results by separator given by config and prints them to stdout
class StandardCliFizzBuzz < StandardFizzBuzz
  def initialize
    result_separator = ConfigLoader.instance['Result separator']
    printer = ResultPrinter.new result_separator, $stdout
    super printer
  end
end
