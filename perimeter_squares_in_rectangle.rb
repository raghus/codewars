# https://www.codewars.com/kata/559a28007caad2ac4e000083/
# 5 kyu

def perimeter(n)
  # it's easy to see that the sides of the squares form a Fibonacci sequence
  # so all we need to do is to find the first n+1 Fib #s (ignoring the first as it is a 0)
  # and then sum that array and multiply by 4 (as there are 4 sides for a square)
  # first we populate an array memo for the first n+1 Fib#s using memo-ization
  # that's it. sum it up and quadruple it
  memo = []
  (0..n+1).each do |i|
    memo[i] = i < 2 ? i : memo[i-1] + memo[i-2]
  end
  return 4*(memo.sum)
end