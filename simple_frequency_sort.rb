# https://www.codewars.com/kata/5a8d2bf60025e9163c0000bc
# 6kyu

def solve(arr)

  # set up a frequencies hash and populate it
  frequencies = {}
  arr.each do |val|
    frequencies[val].nil? ? frequencies[val] = 1 : frequencies[val] += 1
  end

  # sort as desired - first by value ie frequency and then by the key
  frequencies = frequencies.sort_by {|k, v| [-v, k]}

  # create the output array
  output_array = []
  frequencies.each do |k,v|
    v.times {output_array << k}
  end
  return output_array
end

# One-line  arr.sort_by { |e| [-arr.count(e), e] }
