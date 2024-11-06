#!/usr/bin/env ruby

# Accept the argument passed to the script
input = ARGV[0]

# Define regular expressions for sender, receiver, and flags
sender_regex = /from:([^\]]+)/
receiver_regex = /to:([^\]]+)/
flags_regex = /flags:([^\]]+)/

# Extract the required parts using regular expressions
sender = input.match(sender_regex)[1] if input.match(sender_regex)
receiver = input.match(receiver_regex)[1] if input.match(receiver_regex)
flags = input.match(flags_regex)[1] if input.match(flags_regex)

# Print the output in the required format
puts "SENDER: #{sender}" if sender
puts "RECEIVER: #{receiver}" if receiver
puts "FLAGS: #{flags}" if flags
