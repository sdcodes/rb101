puts "Welcome to loan calculator."

puts "Please provide total loan amount."
  loan_amount = gets.chomp.to_i
  
puts "What is your interest rate?"
  interest_rate = gets.chomp

puts "How many months is your loan duration?"
  mloan_duration = gets.chomp.to_i
 
apr = interest_rate.to_f / 100
monthly_interest = apr / 12

monthlypayment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-mloan_duration)))

puts final_calculation = <<-MSG
Monthly Interest Rate is #{monthly_interest.round(3)}
Loan Duration in Months is #{mloan_duration}
Monthly Payment is #{monthlypayment.round(2)}
MSG

  



 
