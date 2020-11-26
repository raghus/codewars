# https://www.codewars.com/kata/5a523566b3bfa84c2e00010b
# 7 kyu

def min_sum(arr)

  # the approach here to get the smallest sum is to take the 
  # largest and smallest numbers and multiply them together
  # then take the next largest and next smallest and multiply them
  # and so on, and finding the sum of each of the products and returning it

  arr.sort! # we sort the array smallest -> largest
  prod = 0
  while arr.length > 0
    # arr.shift is the smallest and arr.pop is the largest
    # this step accumulates the product of the two and also
    # conveniently removes them from the array so we repeat it
    # till the array is empty of all elements as we 'eat' the array
    # from both ends in every step
    prod += arr.shift * arr.pop
  end
  return prod
end