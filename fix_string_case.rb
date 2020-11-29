# https://www.codewars.com/kata/5b180e9fedaa564a7000009a/
# 7 kyu

# check each letter for upper/lower case
# array now looks like ['upper','lower','lower','lower','upper'....]
# if the counts of 'upper' in this array is > 50%
# convert the string to upper case, else lower case
def solve s
  s.chars.map{|letter| letter.upcase == letter ? 'upper' : 'lower'}.count('upper') > 0.5*s.length ? s.upcase : s.downcase
end

# *much* simpler/shorter/easier is
# s.count('A-Z') > s.count('a-z') ? s.upcase : s.downcase
# embarassingly better
