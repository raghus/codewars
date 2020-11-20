# https://www.codewars.com/kata/545cedaa9943f7fe7b000048
def pangram?(string)

    # Form a string with all 26 alphabets
    remaining = 'abcdefghijklmnopqrstuvwxyz' 

    string.split("").each do |letter| # split input string into letters

        # remove that letter we have in the passed string
        # from the variable called remaining
        remaining = remaining.sub(letter.downcase,'') 
        
        # return as soon as length = 0 ie all letters were found and removed
        return true if remaining.length == 0 
    end

    # if we got this far we got through all the letters 
    # and still have some letters remaining => not a pangram
    return false 
end