# https://www.codewars.com/kata/55de8eabd9bef5205e0000ba/
# 5 kyu

require 'prime'
def find_emirp(n)
  # init a blank array to collect primes that meet the rules
  emirps = []

  # get an array of all primes under n
  primes_under_n = Prime.each(n)

  #iterate through and check
  primes_under_n.each do |prime|
    # insert into emiprs if the reverse is a prime but it isn't a reverse of itself
    emirps << prime if prime.to_s.reverse.to_i.prime? and prime.to_s.reverse != prime.to_s
  end
  # return an array of the # of primes, the largest one, and the sum of them
  [emirps.size, emirps.max,emirps.sum]
end