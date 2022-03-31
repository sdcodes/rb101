def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do 
    break if counter == numbers.size
    
    current_number = numbers[counter]
    
    if current_number.odd?
      doubled_numbers << (current_number * 2) 
    else
      doubled_numbers << current_number
    end 
    
    counter += 1
  end 
doubled_numbers
end 


my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)

