# frozen_string_literal: true

require_relative '../block/modulo_block.rb'
require_relative '../block/conjunction_modulo_block.rb'
require_relative '../block/integer_block.rb'

require_relative '../config/config_loader.rb'

require_relative '../block/block_array.rb'

require_relative 'generalized_fizzbuzz.rb'

# FizzBuzz with parameters given by configuration
class StandardFizzBuzz < GeneralizedFizzBuzz
  def initialize(printer)
    config = ConfigLoader.instance
    preamble = config['Preamble']
    postamble = config['Postamble']

    fizz = get_fizz(config)
    buzz = get_buzz(config)
    fizzbuzz = get_fizzbuzz(fizz, buzz, config)
    integer_block = IntegerBlock.new
    blocks = BlockArray.new fizz, buzz, fizzbuzz, integer_block
    numbers = get_range(config)

    super blocks, numbers, printer, preamble, postamble
  end

  private

  def get_fizz(config)
    fizz = config['Fizz']
    fizz_mod = config['Fizz modulo']
    fizz_priority = config['Fizz priority']
    ModuloBlock.new fizz_mod, fizz, fizz_priority
  end

  def get_buzz(config)
    buzz = config['Buzz']
    buzz_mod = config['Buzz modulo']
    buzz_priority = config['Buzz priority']
    ModuloBlock.new buzz_mod, buzz, buzz_priority
  end

  def get_range(config)
    start_index = config['Start']
    end_index = config['End']
    FizzBuzzUtils.range(start_index, end_index)
  end

  def get_fizzbuzz(fizz, buzz, config)
    separator = config['Fizz_Buzz separator']
    fizzbuzz_arr = BlockArray.new fizz, buzz
    ConjunctionModuloBlock.new fizzbuzz_arr, separator
  end
end
