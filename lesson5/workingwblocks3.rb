[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end 

# line 1 - action: method call (map); whole array; return value: [1 3]
#line 2-3 - block execution - each sub-array; 1, 3, 
#method call, first and its return value is used by puts 
#another method call and that becomes the block's return value - [1, 3]