# https://www.codewars.com/kata/5a99a03e4a6b34bb3c000124/train
# 6 kyu

# we can avoid the math and difficulty of getting
# primes or checking primes by usrng Ruby's built-in
# prime generator to which we can pass how many prime #s we want
# we get back an array and it is trivial to find
# the product of the elements of this array in 1 line


require 'prime'
def num_primorial(n)
  (Prime.first n).inject(:*)
end