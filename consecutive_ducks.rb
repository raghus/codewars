# https://www.codewars.com/kata/5dae2599a8f7d90025d2f15f
# 7 kyu

def consecutive_ducks(n)
  
  # this problem has very little to do with code/software
  # just a bit of mathematical insight
  
  # every odd number will work as any odd number can be represented as 2n+1
  # which is just (n) + (n+1) i.e. two consecutive numbers
  return true if n.odd?
  
  # Now, only even numbers need to be checked
  # half of an even number can be odd or even e.g. 10/2 = 5 (odd) but 12/2 = 6 (even)
  # when half the number is odd that result itself can be represented as the sum of two 
  # consecutive numbers as shown above. and then we just need to tack on one more than
  # the larger number and one less than the smaller number to get 4 consecutive numbers
  # if half is even however we can't do that UNLESS half of that even number is odd 
  # in which case we can get 8 consecutive numbers that add up
  # in other words we can keep dividing the number by 2 till we get an odd number
  # the only time we'll never get an odd number eventually is when the  
  # original number itself is a power of 2. e.g. 32 = 2^5 and 32->16->8->4->2
  # So we just need to check if even number is a power of 2 in whcih case, false
  # Math.log(n,2) gives the exponent. It returns a float i.e. Math.log(32,2) = 5.0
  # If the floor and ceil of the log are the same it is an integer and so 
  # the number itself is a power of 2 and we return false. else true
  # all that logic is one simple ternary line of code
  Math.log(n,2).ceil == Math.log(n,2).floor ? false : true
  
end