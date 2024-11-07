#!/usr/bin/env ruby

# Accept the argument passed to the script
input = ARGV[0]

# Define the regular expression (Oniguruma-compatible)
regex = /^hb{1,3}tn$/

# Match the input with the regex and print the result
puts input.scan(regex).join
