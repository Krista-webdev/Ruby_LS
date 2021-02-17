def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividing"
  end
end

prompt("Welcome to Calculator! Please enter your name: ")

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # Main loop

  num1 = ''

  loop do
    prompt("What's the first number?")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Hmmm...that doesn't look like a valid number.")
    end
  end

  num2 = '' 

  loop do
    prompt("What's the second number?")
    num2 = gets.chomp
    
    if valid_number?(num2)
      break
    else
      prompt("Hmmm...that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG
  prompt(operator_prompt)
  
  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end
  
  prompt("#{operation_to_message(operation)} the two numbers.....")

  # CASE statement process:
  result = case operation
          when '1'
            num1.to_i + num2.to_i
          when '2'
            num1.to_i - num2.to_i
          when '3'
            num1.to_i * num2.to_i
          when '4'
            num1.to_f / num2.to_f
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation (Y or N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end # end of Main Loop

prompt("Thank you for using this calculator tool. Goodbye!")