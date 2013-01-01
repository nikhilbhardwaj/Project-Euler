perimeter_table = Hash.new

(10..400).each do |a|
  (10..400).each do |b|
    c = Math.sqrt(a*a + b*b)
    if c == c.to_i
      perimeter = (a + b + c).to_i
      if perimeter_table[perimeter] == nil
        perimeter_table[perimeter] = 1
      else
        perimeter_table[perimeter] += 1
      end
    end
  end
end

max_perimeter, max_val = perimeter_table.sort_by { |key, value| value }.last
puts "#{max_perimeter} : #{max_val}"