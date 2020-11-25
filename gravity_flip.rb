# https://www.codewars.com/kata/5f70c883e10f9e0001c89673
# 8 kyu

# Lovely little kata. Once you get it :-)

def flip(dir, boxes)
  dir == 'R' ? boxes.sort : boxes.sort.reverse
end