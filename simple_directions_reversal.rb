# https://www.codewars.com/kata/5b94d7eb1d5ed297680000ca/
# 7kyu

def solve(arr)

  # a small function that reverses direction
  def flip(direction)
    return 'Begin' if direction == 'Begin'
    direction == 'Left' ?  'Right' : 'Left'
  end
  
  # The broad plan is to split each 'step' of the journey into the direction i.e. Begin/Left/Right and the road's name i.e. Road A/Road B/Road C into arrays
  # We need to shift/rotate the directions array because to backtrack we have to take the opposite direction of the *previous* road
  # The next step is to reverse the directions ie Left -> Right and Right -> Left (the function above)
  directions = []  
  roads = []
  arr.each do |step|
    direction_and_road = step.split(" on ")
    directions << direction_and_road[0] 
    roads << direction_and_road[1] 
  end

  directions = directions.rotate(1) # First rotate the directions array
  directions = directions.map{|d| flip(d)} # Next, call flip to 'flip' the direction in each step
  et_go_home = []  # init a new array and stitch or zip up the two arrays
  (0..directions.length-1).each do |i|
    et_go_home  << directions[i] + " on " + roads [i]
  end
  return et_go_home.reverse # But this needs to be reversed because we begin at the end of the trip

end