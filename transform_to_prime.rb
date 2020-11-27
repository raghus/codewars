# https://www.codewars.com/kata/5a946d9fba1bb5135100007c/
# 6kyu

require 'prime'
def minimum_number(numbers)
  total = numbers.sum # calculate it once
  return 0 if total.prime? # edge case
  i = 0 # set up
  i += 1 while !(total+i).prime? # keep incrementing till we hit a prime
  return i # return the # of increments
end