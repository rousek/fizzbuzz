# frozen_string_literal: true

require_relative 'fizzbuzz/standard_cli_fizzbuzz.rb'

def main
  standard_fizzbuzz = StandardCliFizzBuzz.new
  standard_fizzbuzz.run
end

main
