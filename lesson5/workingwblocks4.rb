my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end 

#1 my_array will equal final return value of the method
# each is used to go over each object; 
#if object is greater than 5, it gets printed; will print 18, 7, 12
#return value of the block will be nil because of puts; 
#return value for .each method will be the original array
# my_arr = same as .each method

