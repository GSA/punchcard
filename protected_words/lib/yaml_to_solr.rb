#!/usr/bin/env ruby

require 'yaml'

YAML.load_file(ARGV[0]).each do |key, value|
  puts key if value[:status] == 'Approved'
end