#  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#  Find the sum of all the primes below two million.

require 'mathn'

primes = Prime.new
sum = 0
next_prime = primes.succ
while next_prime < 2_000_000
  sum += next_prime
  next_prime = primes.succ
end
print sum
