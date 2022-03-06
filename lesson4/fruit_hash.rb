produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(type_of)
  onlyfruits = {}
  counter = 0
  fruit_keys = type_of.keys
    
  loop do
    current_key = fruit_keys[counter]
    current_value = type_of[current_key]
        
    if current_value == "Fruit"
      onlyfruits[current_key] = current_value
    end 
    
    counter += 1
    break if counter == type_of.size
    end 
end 

p select_fruit(produce)

# In this example we want to select the key-value pairs where the value is 'Fruit'.

#find values that equal fruit
 # - check each pair to specific value
 # - if value is correct, add entire pair to new hash

