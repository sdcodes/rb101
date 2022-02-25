require 'yaml'
MESSAGES = YAML.load_file('calculator_message.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def float?(floatnum)
  floatnum == floatnum.to_f.to_s
end

def number?(n)
  n.integer? || n.float?
end 

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt MESSAGES['welcome']

name = ""

loop do
  name = gets.chomp
  
  if name.empty?
    prompt MESSAGES['valid_name']
  else
    break
  end
end

"Hi, #{name}!"

loop do # main loop 

num1 = ""
num2 = ""
  
  loop do
    prompt MESSAGES['first_num_request']
    num1 = gets.chomp
  if valid_number?(num1)
    break
  else
    prompt MESSAGES['not_valid_num']
  end 
  end 
  
  loop do
    prompt MESSAGES['second_num_request']
    num2 = gets.chomp
    if valid_number?(num2)
      break
    else 
      prompt MESSAGES['not_valid_num']
    end
  end
  
  
 prompt MESSAGES['operator_prompt']
  
  operator = ""
  loop do 
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['choose_correct_operator']
    end
  end 
  
  prompt "#{operation_to_message(operator)} the two strings..."
  
  if operator == "1"
    result = num1.to_i + num2.to_i
  elsif operator == "2"
    result = num1.to_i - num2.to_i
  elsif operator == "3"
    result = num1.to_i * num2.to_i
  elsif operator == "4"
    if num2 != "0"
      result = num1.to_f / num2.to_f
    else 
      prompt MESSAGES['zero_divide_error']
      next
    end
    end
  
  
  prompt "The result is #{result}."
  
  prompt MESSAGES['playagain?']
    answer = gets.chomp
    break unless answer.downcase.start_with?("y")
  end
  
  prompt MESSAGES['finalmessage']
