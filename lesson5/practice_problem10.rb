
 
 [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |subarray|
 new_hash = {} 
  subarray.each_pair do |key, value|
     new_hash[key] = value + 1
  end
  new_hash
end 
  

