# https://www.codewars.com/kata/550554fd08b86f84fe000a58/
# 6kyu

def in_array(array1, array2)
  op = [] # set up the output array
  array1.each do |ele| # iterate through array1
    array2.each do |bigele| # for each element in array2
      if bigele.include? ele # check if array1's element is a substring
        op << ele # if yes put it in the op array
        break # break - no need to waste more time in array2
      end
    end
  end
  return op.sort.uniq # sort/uniq for lexicographycal and no dupes
end