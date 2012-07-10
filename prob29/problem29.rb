#!/usr/bin/env ruby

$all_values = Array.new
(2..100).each do |a|
  (2..100).each do |b|
    $all_values << a ** b
  end
end

puts $all_values.uniq!.length
