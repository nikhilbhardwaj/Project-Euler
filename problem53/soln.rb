
# Let us first cache the factorials
$factorial = [1]

(1..100).each do |i|
  $factorial << $factorial[i - 1] * i
end

def C(n, r)
  return $factorial[n] / ($factorial[r] * $factorial[n-r])
end
 
count = 0

(1..100).each do |n|
  (1..100).each do |r|
    count += 1 if C(n, r) > 1_000_000
  end
end

puts count
