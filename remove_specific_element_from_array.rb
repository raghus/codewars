# https://www.codewars.com/kata/581bb3c1c221fb8e790001ef
# 6 kyu

def select_subarray(arr)
  qs = [] # Array to collect q values
  arr.length.times do |iteration| # Walk through the array
    dupe_arr = arr.dup # Create a copy sp as to not be desctructive 
    dupe_arr.delete_at(iteration) # Remove the 0 index then 1 the 1 index and then the next and so on

    # if denominitor is zero put in Infinity else product/sum
    q = dupe_arr.inject(:+) == 0 ? Float::INFINITY :  (1.0*dupe_arr.inject(:*)/dupe_arr.inject(:+)).abs 
    qs << q # move into the array
  end
  # find the index of the min in qs and using that index find the element in the original array
  return [qs.index(qs.min), arr[qs.index(qs.min)]]

end