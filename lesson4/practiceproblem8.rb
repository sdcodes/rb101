numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#numbers is changed. in this case, number (1) is printed, 
#then number (2) is removed. number (3) is printed per p
#then number (4) is removed (shifted) 

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1 is printed, 4 is removed, 2 is printed, 3 is removed
