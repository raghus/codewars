# https://www.codewars.com/kata/5bd776533a7e2720c40000e5/
# 7kyu

def pendulum(values)

  # initailize our output array
  poetry = [] 
  
  # sort the array so we can start with the smallest and iterate
  values.sort!
  
  # the idea is to alternately place even index-ed elements at the beginning of the array
  # and the odd index-ed elements to the end of the array - as prescribed
  # we do this with the ternary for all values of the (sorted) values array
  # we iterate with index so we can ternary a .even? to decide to prepend/append each element
  # prepend (or unshift) adds to the beginning of the array 
  # append (or push) add to the end of the array
  values.each_with_index do |value,index|
    index.even? ? poetry.prepend(value) : poetry.append(value) # prepend/append as desired
  end

  # all done. return it
  return poetry 
end