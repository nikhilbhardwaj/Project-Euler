# Returns true if n1 and n2 have different digits
# This is essential for the entire number to be pandigital
def distinct_digits?(n1, n2)
  (n1.to_s.chars.to_a & n2.to_s.chars.to_a).length == 0
end


def pandigital_product?(m1, m2)
  p = m1 * m2
  str = "#{m1}#{m2}#{p}".chars.to_a.sort.join
  return str == "123456789"
end

pandigital_products = []

(1..5_000).each do |m1|
  (1..99).each do |m2|
    break if "#{m1}#{m2}#{m1*m2}".length > 9 # safely break out of inner loop
    pandigital_products << (m1 * m2) if distinct_digits?(m1, m2) && pandigital_product?(m1, m2)
  end
end

pandigital_products.uniq!

#puts pandigital_products.include? 7254
puts pandigital_products.inject(:+)
