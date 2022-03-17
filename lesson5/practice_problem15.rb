arr = [{a: [1, 2, 3]}, 
       {b: [2, 4, 6], c: [3, 6], d: [4]}, 
       {e: [8], f: [6, 10]}]


  arr.select do |hash|
    hash.all? do |_, value|
      value.all? {|i| i.even?}
    end 
  end 

#input: nested array
#return an array
  #new array as they will be changes/transformation
  #qualifications: all numbers must be even in hash
  #hash is outermost collection within array: arr[0], arr[1], arr[2]
  #iterate over array with .map
  #once inside hash, must separate 'key' from 'value'
  #check integers in value to see if all even
  #select only if even
  #return new array