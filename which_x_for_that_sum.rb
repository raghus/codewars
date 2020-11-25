# https://www.codewars.com/kata/which-x-for-that-sum/
# 5kyu

def solve(m)

  # The geometric progression a + ar + ar**2 + ar**3 + ar**4 + ... to infinity
  # converges (ie sums up) to a/(1-r) if 0 < r < 1
  # U(n, x) = x + 2x**2 + 3x**3 + .. + nx**n can be first simplied to
  # s  = x + 2x**2 + 3x**3 + .. + nx**n where x is the sum. Mulitplying both sides by x
  # sx =     x**2  + 2x**2 + ... Now we can subract the lower equation from the upper
  # s(1-x) = x + x**2 + x**3 + x**4 which we know to be x/(1-x)
  # therefore s = x/(1-x)**2 which simplies to a quadratic equation
  # sx**2 - (2s+1)x + s = 0 which is of the form ax**2 + bx + c = 0
  # where a = s, b = -(2s+1) and c = s
  # the roots of which are (-b +/- sqrt(b**2 - 4ac))/2a. 
  # We want the - of the +/1 as the root has to be < 1
  # Now it's just arithmetic to calculate the value we need

  minus_b_term = (2*m)+1
  root_term = Math.sqrt((4*m) + 1)
  two_a_term = (2*m)
  return (minus_b_term - root_term)/two_a_term

end