# https://www.codewars.com/kata/5a53a17bfd56cb9c14000003/
# 7 kyu

def disarium_number(n)
  sum = 0 
  #n.digits.reverse gives us the number as an array ie 693 is [6,9,3]
  n.digits.reverse.each_with_index do |digit,pos|
    # we just need to raise each digit to its 1-indexed rather than 0-indexed position
    sum += digit**(pos+1)
  end
  # check if the sum matches the original number
  sum == n ? "Disarium !!" : "Not !!"
end