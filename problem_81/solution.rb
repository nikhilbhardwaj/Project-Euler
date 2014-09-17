#!/usr/bin/env ruby

# Read the matrix into a 2D array
matrix = []
while line = gets do
  matrix << line.split(",").map(&:to_i)
end

$lookup_table = {}
# Recursively compute the min sum
def min_sum(matrix, i, j)
  return $lookup_table["#{i},#{j}"] if $lookup_table["#{i},#{j}"]

  if i == j and i == (matrix.length - 1)
    return matrix[i][j]
  elsif i == matrix.length or j == matrix.length
    return 1_000_000_000_000 #Return a huge number as we are out of bounds
  else
    move_right_sum = min_sum(matrix, i, j + 1)
    move_down_sum  = min_sum(matrix, i + 1, j)
    result = matrix[i][j] + [move_right_sum, move_down_sum].min
    # Memoize the result
    $lookup_table["#{i},#{j}"] = result
    return result
  end
end

puts min_sum(matrix, 0, 0)
