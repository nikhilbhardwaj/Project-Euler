#Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome? num
  return true if num.to_s == num.to_s.reverse
end

largest_palindrome = 0

(100..999).each do |num1|
  (100..999).each do |num2|
    prod = num1 * num2
    largest_palindrome = prod if palindrome? prod and prod > largest_palindrome
       end
end

print largest_palindrome
