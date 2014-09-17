#!/usr/bin/env ruby

def circular_permutations(str)
  letters = str.chars.to_a.map(&:to_i)
  perms = []
  (letters.length).times do
    first_digit = letters[0]
    letters.delete_at(letters.index(first_digit) || letters.length)
    letters << first_digit
    perms << letters.join
  end
  return perms.map(&:to_i)
end

def has_bad_digit?(number)
  # if a number has 0 2 4 5 6 8 then it can't be a circular prime
  bad_digits = [0, 2, 4, 5, 6, 8]
  digits = number.to_s.chars.map(&:to_i)
  return false if (digits & bad_digits).length == 0
  return true
end
# Finding all primes below 1 million
require 'mathn'

primes = Prime.new
all_primes = []
next_prime = primes.succ
while next_prime < 1_000_000
  all_primes << next_prime
  next_prime = primes.succ
end

def circular_prime?(number, all_primes)
  return false if has_bad_digit?(number)
  permutations = circular_permutations(number.to_s).uniq
  permutations.each { |perm| return false if !all_primes.include? perm }
  return true
end

circular_primes = []
all_primes.each do |num|
  circular_primes << num if circular_prime? num, all_primes
end

# Add 2 and 5 because they get disqualified by has_bad_digit?
circular_primes << 2 << 5
puts circular_primes.length