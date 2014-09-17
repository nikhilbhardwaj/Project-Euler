#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
solution = 2_520
while true
  break unless (2..20).any? {|divisor| solution % divisor != 0}
  solution += 1
end
puts solution
