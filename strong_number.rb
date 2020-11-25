# https://www.codewars.com/kata/5a4d303f880385399b000001/
# 7 kyu

def strong_num(n)
  
  # Function to calculate the factorial
  def factorial(number)
    return (1..number).inject(:*) || 1
  end
  
  # n.digits gives us an array with the digits of n
  # modify it with map to get the array of the factorials
  # sum the resultant array up and compare to the original number
  n == n.digits.map{|n| factorial(n)}.sum ? "STRONG!!!!" : "Not Strong !!"

end