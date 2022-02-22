VALID_CHOICES = ['rock', 'paper', "scissors"]

def prompt(message)
  puts "=> #{message}"
end 

def display_result(choice, computer_choice)
  if (choice == "rock" && computer_choice == "scissors") ||
      (choice == 'paper' && computer_choice == "rock") || 
        (choice == "scissors" && computer_choice == "paper")
    prompt "You won!"
  elsif (choice == "rock" && computer_choice == "paper") ||
          (choice == 'paper' && computer_choice == "scissors") || 
           (choice == "scissors" && computer_choice == "rock")
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

loop do #main loop start
  choice = ""
  loop do 
  prompt "Choose one: #{VALID_CHOICES.join(', ')}"
  choice = gets.chomp
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice."
    end 
  end 
  
  computer_choice = VALID_CHOICES.sample
  
  puts "You chose #{choice}. Computer chose #{computer_choice}."
  
  display_result(choice, computer_choice)

prompt "Do you want to play again?"
  answer = gets.chomp
break unless answer.downcase.start_with?("y")

end #end of main loop  

prompt "Thank you for playing. Goodbye!"





