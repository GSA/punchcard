#!/usr/bin/env ruby

require 'yaml'

YAML.load_file(ARGV[0]).each_value do |value|
  puts value[:analyzed] if value[:status] == 'Approved'
end