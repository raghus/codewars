# https://www.codewars.com/kata/523a86aa4230ebb5420001e1
# 5 kyu

def anagrams(word, words)
  output = [] # Initialize it

    # iterate through the words array
    words.each do |possible_anagram| 

    # check for anagram by sorting both words
    # and if true, add to output  
    output << possible_anagram if word.chars.sort.join("") == possible_anagram.chars.sort.join("")
  end
  return output
end