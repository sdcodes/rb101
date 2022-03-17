arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |subarray|
  subarray.reject do |number|
    number % 3 != 0
  end
end
