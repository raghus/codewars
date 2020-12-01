# https://www.codewars.com/kata/5511b2f550906349a70004e1/
# 5 kyu

def last_digit(n1, n2)

  # this is less of a coding/software problem than a math problem

  # The last digits of 0**n are all 0. Similary the last digits of 1**n are all 1
  # With 2, the powers are 2,4,8,16,32,64,128,256,512,1024... and the last digits are
  # [2,4,8,6,2,4,8,6,2,4..] ie the pattern [2,4,6,8] repeats. Similarly the powers of
  # 3 have the last digit in the repeating pattern [3,9,7,1]. These are first stored 
  # in the hash below
  hash_last_digit_possibiities = 
  {
    0 => [0],
    1 => [1],
    2 => [2,4,8,6],
    3 => [3,9,7,1],
    4 => [4,6],
    5 => [5],
    6 => [6],
    7 => [7,9,3,1],
    8 => [8,4,2,6],
    9 => [9,1]
  }

  return 1 if n2 == 0 # handle an edge case
  return 1 if n1%10 == 1 # handle an edge case

  # The last digit of the base is the only digit that influences the last digit of 
  # of the overall number. ie 2**5 and 12**5 and 32**5 and 1832**5 all end with the 
  # same digit. Now what digit might that be? We know it has to be 2,4,8,6 in a 
  # repeating pattern. ie the 1st, 5th, 9th power all end with 2 and so on. So the 
  # general pattern is that digit is just the (exponent)%(length of the repeating pattern)
  # Consider 2**123 (as well as 592**123). 123%4 = 3. The pattern is 2,4,8,6 and the
  # third number is 8. So the number must end in an 8 and indeed it does because 2**23
  # is 10633823966279326983230456482242756608 => last digit being 8

  # Get the unit's place of the base
  base = n1%10 
  
  # with that figure out what our pattern is
  relevant_array = hash_last_digit_possibiities[base] 

  # since arrays are zero-indexed, the first position is index 0 so subtract 1
  index = (n2%relevant_array.length) - 1
  
  # Just look it up!
  relevant_array[index]  
end