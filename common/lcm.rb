def gcd a, b
  a,b = b,a if b > a
  if a % b == 0 
    then
    b
  else
    gcd a-b,b
  end
end

def lcm a,b
  (a * b) / gcd(a,b) 
end
