require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def valid_number?(num)
#   num.to_i() != 0
# end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
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

prompt (MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # Main loop

  num1 = ''

  loop do
    prompt(MESSAGES['first_num'])
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end

  num2 = '' 

  loop do
    prompt(MESSAGES['second_num'])
    num2 = gets.chomp
    
    if valid_number?(num2)
      break
    else
      prompt(MESSAGES['not_valid'])
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
      prompt(MESSAGES['must_choose'])
    end
  end
  
  prompt("#{operation_to_message(operation)} the two numbers.....")

  # CASE statement process:
  result = case operation
           when '1'
            num1.to_f + num2.to_f
           when '2'
            num1.to_f - num2.to_f
           when '3'
            num1.to_f * num2.to_f
           when '4'
            num1.to_f / num2.to_f
           end

  prompt("The answer is #{result}.")

  prompt(MESSAGES['repeat'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end # end of Main Loop

prompt(MESSAGES['goodbye'])