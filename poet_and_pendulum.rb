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
  # iterate with index so we can .even? to decide to prefix/postfix each element
  values.each_with_index do |value,index|
    index.even? ? poetry.unshift(value) : poetry.append(value) # prefix/postfix as needed
  end

  # all done. return it
  return poetry 
end