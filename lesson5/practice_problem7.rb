a = 2
b = [5, 8]
arr = [a, b] #referencing same memory location as a and b

arr[0] += 2 # originally arr = [2 [5, 8]] so arr[0] += 2 
            #will have things change to [4, [5, 8]]

arr[1][0] -= a #arr[1][0] = 5; this line changes arr to [4, [1, 8]]
p arr


## to review this again as above is incorrect 