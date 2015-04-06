require 'set'

def stringify(number)
  number.to_s.split(//).sort.join
end

(1..Float::INFINITY).each do |x|
  s = Set.new
  s << stringify(x) << stringify(2*x) << stringify(3*x) << stringify(4*x) << stringify(5*x) << stringify(6*x)
  if s.size == 1
    puts "Your search ends at - #{x}"
    break
  end
end
