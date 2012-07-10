#!/usr/bin/env ruby
def sum_of_fifth_powers_of_digits(n)
  sum = 0
  while n > 0
    rem = n % 10
    sum = sum + (rem ** 5)
    n = n / 10
  end
  return sum
end

$total = 0
(10..(9**5)*9).each do |num|
  $total += num if num == sum_of_fifth_powers_of_digits(num)
end
puts $total
