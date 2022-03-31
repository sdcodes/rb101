def select_letter(string, letter)
  new_string = ""
  counter = 0
  
  loop do 
    break if counter >= string.size
    
    character = string[counter]
    if character == letter
      new_string << character
    end 
    counter += 1
  end 
  new_string
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
