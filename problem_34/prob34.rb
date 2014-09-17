def factorial(n)
  return 1 if n == 0
  return n * factorial(n-1)
end

def sum_of_factorial_of_digits(n)
  sum = 0
  while n > 0
    rem = n % 10
    sum = sum + factorial(rem)
    n = n / 10
  end
  return sum
end

$total = 0
(10..factorial(10)).each do |num|
  if num == sum_of_factorial_of_digits(num)
    $total += num
    puts "Curious No #{num}"
  end
end

puts $total
