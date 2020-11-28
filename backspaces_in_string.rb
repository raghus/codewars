# https://www.codewars.com/kata/5727bb0fe81185ae62000ae3
# 6kyu

def clean_string(string)
  # set up an empty string which we'll build up
  cstring = '' 

  # Interate through the passed string and if the character 
  # is not a # then we add it to the clean string but if it
  # is a # we remove (backspace) it from the clean string
  string.chars.map{|x| x != '#' ? cstring += x : cstring.chop!}
  return cstring
end