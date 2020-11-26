# https://www.codewars.com/kata/5ce399e0047a45001c853c2b/
# 6 kyu

# First the naive method that works until the array gets
# to be 100s of 1000s of elements log
# calculating the sum of an array so many times
# leads to timeout
def naive_parts_sums(ls)
  out_array = []
  while ls.length > 0
    current_sum = ls.sum
    out_array << current_sum
    ls.shift
  end
  out_array << 0
  return out_array
end

# This is a better method that appends the next value
# of the output array as nothing but the previous last value 
# minus the element from the ls array
# Goes fast!

def better_parts_sums(ls)
  out_array = [ls.sum || 0]
  ls.each do |ele|
    out_array << out_array.last - ele
  end
  return out_array
end