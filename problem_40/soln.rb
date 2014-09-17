
$fractional_part = ""

# I figured 185185 after running the code with a break
(1..185185).each do |num|
  $fractional_part << num.to_s
end

def d(index)
  return $fractional_part[index - 1].to_i
end

puts d(1) * d(10) * d(100) * d(1000) * d(10000) * d(100000) * d(1000000)
# 210
