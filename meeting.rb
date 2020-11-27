# https://www.codewars.com/kata/59df2f8f08c6cec835000012/
# 6 kyu

# fun one liner. here's the explanation
# the first split(";") gives us an array of the names of the form "John:Doe"
# the next map takes each name whose split(":") gives us the ['John','Doe']
# then we take the 2nd or last element ie last name and the 1st element ie the first name and concat with a , inbetween
# and we upcase it to end up with ['DOE, JOHN, 'SMITH, JANE'...] and we sort this array to have it all sorted by last name
# now the last map just adds the parentheses ie [(DOE, JOHN),(SMITH, JANE)...] and we just join it and return that string
# we don't need an explicit return as that's the last thing evaluated which Ruby will return
def meeting(s)
  s.split(";").map{|x| x.split(":").last.upcase + ", " + x.split(":").first.upcase}.sort.map{|x| "(#{x})"}.join("")
end