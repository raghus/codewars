# https://www.codewars.com/kata/5547cc7dcad755e480000004
# 5 kyu

def removNb(n)
  # Some math helps us go faster here and avoid a brute force search. 
  # Say our numbers are a and b. They are related such that
  # a * b = sigma - a - b which we can rearrange as
  # b = (sigma-a)/(1+a)
  # So for each a from 1..n we see if we get its 'twin' b that is 
  # a) an integer and b) below n and we're done!
  # Since there could be more than one answer we dont return immediately
  # Rather we stuff it into an array that we reutn at the very end.
  result = []
  sigma = n*(n+1)/2
  (1..n).each do |i|
    twin = 1.0*(sigma - i)/(i+1)
    if twin < n && (twin.to_int == twin)
      result << [i,twin]
    end
  end
  return result
end

# This is an O(n) solution as we iterate through the array only once.
##########################################

# Older Attempt. Brute Force
def removNb_inefficient(n)
  sigma = n*(n+1)/2 # First find the sum of the first n numbers
  (1..n).each do |i| # Start one iteration from 1 to n, call that i
    (i+1..n).each do |j| # Start an inner iteration fron i+1 to n
      product = i*j 
      gap_sum = sigma - i - j
      if product == gap_sum # if it meets our conditions then we're done
        return [[i,j],[j,i]]
      end
    end
  end
  return [] # if we have gotten this far then we have no solution
end

# This solution works but is inefficient. Since we use two nested loops that could be
# n iterations long, this is an O(n^2) implementation and will time out for very 
# large values of n