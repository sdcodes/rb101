produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def selected_fruit(produce)
  fruits_only = {}
  counter = 0
  
  loop do 
    break if counter >= produce.size
    name = produce.keys  #[apple, carrot, pear, broccoli]
   current_name = name[counter] # fruit 
    
    if produce[current_name] == "Fruit"
      fruits_only[current_name] = "Fruit"
    end
    counter += 1
    
  end 
fruits_only
end 
    
    
  p selected_fruit(produce) 
