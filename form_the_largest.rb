# https://www.codewars.com/kata/5a4ea304b3bfa89a9900008e/
# 7 kyu

def max_number(n)
  # Get the digits
  # Sort them
  # Reverse it as we want the *largest* number
  # Convert the array into a string
  # Convert the string back to an integer
  n.digits.sort.reverse.join("").to_i
end