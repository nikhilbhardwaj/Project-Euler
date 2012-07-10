#!/usr/bin/env ruby

sum = 0
# Since we're only interested in the last 10 digits, we can use modular arithmetic
modulator = (10 ** 10)
(1..1000).each do |n|
  sum += (n ** n) % modulator
end

puts sum % modulator
