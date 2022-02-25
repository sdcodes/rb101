def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#inside method tricky_method()
# w/ string = pumpkins rutabaga
#w/ array = pumpkins rutabaga 

#outside ofmethod
#puts  - pumpkins 
#puts - pumpkins, rutabaga
