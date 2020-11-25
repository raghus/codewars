# https://www.codewars.com/kata/5ae7e3f068e6445bc8000046/
# 7 kyu

def next_happy_year(year)
  while true # begin a loop
    year += 1 # get the next year
    arr = year.to_s.split("") # form an array of the number of the year
    if arr.uniq.count == 4 # if all numbers are different we return it and break
      return year
      break
    end
  end
end

# From another user (anter69):   (year+1).upto(9999).detect { |n| n.digits.uniq.size == 4 }