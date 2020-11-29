# https://www.codewars.com/kata/5a092d9e46d843b9db000064/
# 7 kyu

# We map each element of arr and leave it in unless it's
# negative counterpart exists. We end up with an array that
# has nils where we removed the +/- twins and potentially
# one or more of the uniques. .compact removes the nils, 
# .uniq gets us the only unique element and since we are still
# operating on the array .first gives us the element

def solve(arr)
  arr.map{|x| x unless arr.include?(-x)}.compact.uniq.first
end