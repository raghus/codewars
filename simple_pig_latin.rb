# https://www.codewars.com/kata/520b9d2ad5c005041100000f
def pig_it text
    #puts "Input is #{text}"
    pigtext = [] # set up an array into which we'll load modified words
    text.split(" ").each do |word|
        if word.count("^a-zA-Z").zero? # Check if the word is all alphabetic
            pigtext << word[1..word.length-1]+word[0]+"ay" # pig latin rule
        else
            pigtext << word # for ? or ! etc do nothing
        end
    end
    return pigtext.join(" ") # form the string again from the array
end