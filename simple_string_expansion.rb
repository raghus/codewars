# https://www.codewars.com/kata/5a793fdbfd8c06d07f0000d5/
# 5 kyu

def solve(s)
  result = '' # initalize the value we'll build up and return
  # start from the inner most parentheses and work our way out
  # we don't care about close brackets in this problem so remove them
  # convert the string to an array by splitting using (
  array = s.delete(')').split("(")
  # convert things like a3 or b2 to a,3 and b,2 by separating chars and flattening to get a 1D array
  array =  array.map{|x| x.chars}.flatten

  # start from teh last element ie the inner-most
  array.reverse.each do |elem|
    if !!(elem =~ /\A[-+]?[0-9]+\z/) # if it is a number
      result = result * elem.to_i # "string so far" * number
    else # it is a string
      result = elem + result # this string + string so far
    end
  end
  # all done. return the result
  return result
end