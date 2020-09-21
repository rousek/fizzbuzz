# frozen_string_literal: true

require 'yaml'
require 'singleton'

# Source: https://stackoverflow.com/a/17660397
# Loads and parses config file
class ConfigLoader
  include Singleton

  def initialize
    load_config_data
  end

  def [](name)
    config_for(name)
  end

  def config_for(name)
    @config_data[name]
  end

  private

  def read_config_file_path
    config_file_path = ENV['FIZZBUZZ_CONFIG']
    return config_file_path unless config_file_path.nil?

    warn 'Missing path to config file.'
    warn 'Set environment variable "FIZZBUZZ_CONFIG" to '\
          '/path/to/fizzbuzz_config.yaml'
    raise
  end

  def load_config_data
    config_file_path = read_config_file_path

    begin
      config_file_contents = File.read(config_file_path)
    rescue Errno::ENOENT
      warn "Config file not found in: #{config_file_path}"
      raise
    end
    @config_data = YAML.safe_load(config_file_contents)
  end
end
