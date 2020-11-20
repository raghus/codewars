# https://www.codewars.com/kata/5f6d533e1475f30001e47514
def consecutive(arr, a, b)
    # Get the absolute difference in positions/indexes
    # of a and b in the array.
    # If it is 1 they are conseutive, else not
    if (arr.index(a)-arr.index(b)).abs == 1
        return true
    end
    return false
end