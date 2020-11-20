# https://www.codewars.com/kata/554e4a2f232cdd87d9000038
def DNA_strand(dna)
    mirror = [] # initialize a blank array for the result

    # Hash for the mappings
    maps = {'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C'} 
    
    dna.split("").each do |val| # take each character
      mirror << maps[val] # insert its mirror letter into the array
    end
    return mirror.join("") # convert back to a string and return it
end