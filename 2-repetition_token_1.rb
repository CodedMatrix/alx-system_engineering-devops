#!/usr/bin/env ruby

# Regular expression to match the given test strings
regex = /h(b+)?t(n)/

# Get the input string from the command-line argument
input_string = ARGV[0]

# Check if the regular expression matches the input string
if input_string =~ regex
  puts "Match found: #{input_string}"
else
  puts "No match found: #{input_string}"
end