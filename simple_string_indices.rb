# https://www.codewars.com/kata/5a24254fe1ce0ec2eb000078
# 6 kyu

def solve(s, n)
  return -1 if s[n] != '(' # short circuit
  height = 0 # this keeps track of how many 'extra' open brackets we see before we see the matching close
  
  # iterate from one position after the starting through to the end
  (n+1..s.length-1).each_with_index do |i|
    next unless s[i] == '(' or s[i] == ')' # skip all non bracket elements
    if s[i] == '(' 
      height += 1 # we see another intermediate open so increment height
    elsif s[i] == ')' # we see a close bracket!
       if height == 0
         return i # but can return it only when it hans't closed an intermediate open
       else
         height -= 1 # decrement height
       end
    end
  end
  return -1 # no answer
end