# https://www.codewars.com/kata/51c8e37cee245da6b40000bd/
# 4kyu

def solution(input, markers)
  output = [] # set up the output array

  # Take the input line by line
  input.split("\n").each do |line| 

    # Go through each marker
    markers.each do |marker|
      # Find the postion of the marker in the line
      # if it exists remove everything from there on
      line = line[0..line.index(marker)-1] unless line.index(marker).nil?
    end
    # put the cleaned up line into output
    # but get rid of leading/trailing whitespace
    output << line.strip
  end
  return output.join("\n")
end