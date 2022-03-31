arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], 
       [{a: 1, b: 2, c: 3, d: 4}, 'D']]


new_hash = {}
arr.map do |subarray|
 new_hash[subarray[0]] = subarray[1]
end 

new_hash
 
 ##new way below 
 
 arr = [[:a, 1], 
       ['b', 'two'], 
        ['sea', {c: 3}], 
         [{a: 1, b: 2, c: 3, d: 4}, 'D']]
            
new_hash = {}
  counter = 0

loop do 
 key = arr[counter][0] 
  new_hash[key] = arr[counter][1]
  counter += 1
  break if counter >= arr.size
end 
new_hash