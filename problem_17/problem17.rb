#  Project Euler : Problem 17
#  Author : Nikhil Bhardwaj <nikhil.bhardwaj@live.in>
=begin
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
=end

$map = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
        6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
        11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
        16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
      }

$map_tens_place = { 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
                   6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"
                 }

def translator number
  "I can't translate that for you!"  if  number <= 0 && number > 1000
  case number
    when 1..19
      $map[number]
    when 20..99
      if number % 10 != 0 then
      $map_tens_place[number/10] + ( translator  number % 10 )
      else
      $map_tens_place[number/10]  
      end
    when 100..999
      if number % 100 == 0 then
        $map[number/100] + "hundred"
      else
        $map[number/100] + "hundredand" + ( translator number % 100 )
      end
    when 1000
      "onethousand"
    end
end

$total_letters = 0
(1..1000).each do |natural_number|
  $total_letters += (translator natural_number).length
end

puts $total_letters
