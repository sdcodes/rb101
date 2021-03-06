hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, values|
  if values[:type] == "vegetable"
     values[:size].upcase
  else values[:type] == "fruit"
    values[:colors].map do |color|
      color.capitalize
    end
  end 
end 

#OTHER WAY


new_array = []
hsh.each_pair do |key, value|
  if value[:type] == 'vegetable'
   new_array << value[:size].upcase  
  else value[:type] == 'fruit'
   new_array << (value[:colors].map do |color|
      color.capitalize
    end)
end
end 
   new_array   
      


#input: hash
#output: new array - colors of fruit, size of veggies
#in example - color is in a subarray
#sizes.uppercase; colors.capitalize
#first identify fruit vs veggies
#if fruit, locate color and capitalize
#if veggie, locate size and uppercase
#