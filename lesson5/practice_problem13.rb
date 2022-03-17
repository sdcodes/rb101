arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr.sort_by do |subarray|
  subarray.select do |numbers|
    numbers.odd?
  end 
end 


#input: array
#return: new array - have it sorted based on the odd numbers
  # should be [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
#ireration on nested arrays
#can't change sub-arrays
#would need to first iterate: use .map
#have second method evaluate odd numbers only
#sort based on individual number (only odds)
