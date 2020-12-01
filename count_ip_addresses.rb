# https://www.codewars.com/kata/526989a41034285187000de4
# 5 kyu

def ips_between(start, ending)
  # There are four sections of IPv4 addresses. Each of which can take 256 values - from 0 to 255
  # In the last ie 4th section there are 256 possible values but including the last but one ie 3rd section, 
  # there are 256*256 values, including the 2nd there are 255**3 and inclduing the first 256**4 all told
  
  # convert to arrays and reverse them as we want to go Right -> Left
  start_arr = start.split(".").reverse 
  ending_arr = ending.split(".").reverse
  count = 0
  (0..3).each do |index|
    # the delta multiplied by 256 raised to the position of the delta
    count += (ending_arr[index].to_i - start_arr[index].to_i)*(256**index)
  end
  return count
end