# https://www.codewars.com/kata/52b7ed099cdc285c300001cd
def sum_of_intervals(intervals)
  hours = []   # set up the blank array
  intervals.each do |interval| # for each of the intervals
    (interval.first..interval.last-1).each do |hr| 
    # from the start hour to end hour - 1
    # insert the top of the hour into the array
      hours << hr
    end
  end
  # any dupe intervals can be gotten rid of with a .uniq
  # and then just return the length of the array after uniq
  return hours.uniq.length
end