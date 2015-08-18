#!/usr/bin/env ruby

def sum_at_level(n)
  return 4 * (n * n) - 6 * (n - 1)
end

sum = 1
1001.step(3, -2) do |n|
  sum += sum_at_level(n)
end

puts sum
