=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

def pythagorean_triplet? a, b, c
  true if ( a*a + b*b ) == c*c
end

(2..1000).each do |a|
  (a+1..1000).each do |b|
    c = Math.sqrt( a*a + b*b ).to_i
    if pythagorean_triplet? a, b, c  then
      if a + b + c  == 1000 then
        puts a*b*c
      end
    end
  end
end
