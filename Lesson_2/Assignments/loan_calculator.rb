def valid_number?(num)
  num.to_i.to_s == num
end

puts "Welcome to the Loan Calculator! Lets find out your monthly payment.\n"

loop do
  loan_amount = ''
  loop do
    prompt "Please enter the total amount of your loan:"
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      puts "Please enter only integers, no punctuation or symbols."
    end
  end

  apr = ''
  monthly_interest = ''
  loop do
    puts "What is the annual interest rate (APR) for this loan?"
    apr = gets.chomp
    if valid_number?(apr)
      monthly_interest = (apr.to_f / 100) / 12
      break
    else
      puts "Please only enter a whole number, no symbols."
    end
  end

  duration = ''
  total_months = ''
  loop do
    puts "How many years will the loan be for?"
    duration = gets.chomp
    if valid_number?(duration)
      total_months = duration.to_i * 12
      break
    else
      puts "Please enter a whole number, no characters or symbols."
    end
  end

  monthly_payment = loan_amount.to_i *
                    (monthly_interest / (1 -
                    (1 + monthly_interest)**(-total_months)))
  puts "Your monthly payment will be: $#{monthly_payment.round(2)}\n\n"
  puts "Would you like to calculate another loan? Type Y or N"
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

puts "Thank you for using the Loan Calculator! Good bye!"