# https://www.codewars.com/kata/5a9078e24a6b340b340000b8/
# 6 kyu

require 'prime' # include the Ruby library
def solve(n)
  i = 0 
  while true 
    # decrease i by 1 and return it if n-1 is a prime
    return (n-i) if (n-i).prime?
    # increase i by 1 and return it if n+1 is a prime. 
    # since the problem asks for the lower nearest prime we -1 before we +1
    return (n+i) if (n+i).prime?
    i += 1 # try with the next nearest if a prime hasn't been found yet
  end
end