#!/usr/bin/env ruby
contents = File.open("words.txt","rb").read.gsub!('"','')
words = contents.split(",")

triangle_nos = Array.new
(1..20).each do |n|
  triangle_nos << (n*(n+1))/2
end

def word_sum(word)
  sum = 0
  word.each_byte do |char|
    sum += (char - 64)
  end
  return sum
end

triangle_words = 0
words.each do |word|
  triangle_words += 1 if triangle_nos.include? word_sum(word)
end

puts "Total Triangle words are #{triangle_words}"
