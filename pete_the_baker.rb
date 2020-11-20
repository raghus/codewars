# https://www.codewars.com/kata/525c65e51bf619685c000059
def cakes(recipe, available)
  arr = [] # set up the blank array
  recipe.each do |ingredient,quantity| 
  # iterate through the recipe
  # finding each ingredient and the quanity required

    # if the ingredient from the recipe is not present
    # in teh list of available ingredients, then failt
    return 0 if available[ingredient].nil? 

    # if not check the largest quantity of cakes we can make
    # based on this ingredient alone
    max_for_this_ingredient = (available[ingredient]/quantity).floor

    # push this into the array for each ingredient
    arr << max_for_this_ingredient
  end

  # the limiting factor will be the lowest value
  # ie if we have enough sugar for 2 cakes 
  # but enough icing for 3 cakes, we can only make 2 cakes
  # so, return this minimum value in the array
  return arr.min
end
