# https://www.codewars.com/kata/559cc2d2b802a5c94700000c/
# 7 kyu

def consecutive(arr)
  return 0 if arr.length < 2 # edge condition
  
  # The broad outline of algorithm is this:
  # For the array to have all the consecutive elements the required number of elements 
  # in-between the max and min value of the array is just the max_val - min_val - 1
  # Now the actual numnber of elements in between is the length of the array minus these two exteme values
  # i.e. arrray.length - 2
  required_elements_in_the_middle = arr.max - arr.min - 1
  actual_elememnts_in_the_middle = arr.length - 2
  gaps = required_elements_in_the_middle - actual_elememnts_in_the_middle
  return gaps # for readibility. there is no need for the explicit return statement in Ruby
end