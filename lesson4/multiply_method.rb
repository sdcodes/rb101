def multiply(array, transform_criteria)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == array.size

    current_number = array[counter]
    current_number *= transform_criteria.to_i 
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 9)
p my_numbers