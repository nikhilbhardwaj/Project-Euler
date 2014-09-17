#  Project Euler : Problem 14
#  Author : Nikhil Bhardwaj <nikhil.bhardwaj@live.in>

def collatz_chain n
  chain = [n]
  while n != 1
    if n % 2 == 0
      then
      n /= 2
    else
      n = 3 * n + 1
    end
    chain << n
  end
  chain
end

longest_chain_length, solution = 10, 13
(2..1_000_000).each do |number|
  chain_length = (collatz_chain number).size
  longest_chain_length, solution = chain_length, number if chain_length > longest_chain_length
end

puts solution

