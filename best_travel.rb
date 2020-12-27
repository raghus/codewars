# https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa
# 5kyu

def choose_best_sum(t, k, ls)
  longest_possble_distance = 0
  # We hve to find all possible combinations of k towns from the array ls
  # ls.combination(k) does precisely that
  # we iterate through each itinerary and find the total distance with a .sum
  # if it exceeds k, we skip else we keep track of a high water mark via .max
  ls.combination(k).to_a.each do |itinerary| 
    if itinerary.sum <= t
      longest_possble_distance = [longest_possble_distance,itinerary.sum].max
    end
  end
  # At the end if we are still at zero we return nil as requestes
  # Else we return the high water mark
  return longest_possble_distance > 0 ? longest_possble_distance : nil
end
