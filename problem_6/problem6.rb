=begin 
The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

By solving the equations algebraically we get the following relation between the difference of the sum of squares and the square of the sum
(n-1)*n*(n+1)*(3n+2)/12
=end

def diff_sum_squares_and_square_sums n
  (n-1)*n*(n+1)*(3*n+2)/12
end

print diff_sum_squares_and_square_sums 100



