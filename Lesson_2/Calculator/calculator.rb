# ask the user for 2 numbers
# ask the user for type of operation to perform
# perform the operation
# output the result

# answer =  gets
# puts answer

# Ruby reads from top to bottom - so methods should be at the top
# We want to create a method we can use throughout our code that includes this symbol (=>) in front of each message:
def prompt(message)
  Kernel.puts("=> #{message}")
end

# This method is for the loops to check if the user input is a valid number:
def valid_number?(num)
  num.to_i() != 0  
  # Why not equal to 0? Remember that if a user inputs a string of characters, like "hi", to_i method will output 0 
end

# Method for displaying to the user what operation they chose:
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


# puts "Welcome to Calculator!" Instead we use the following:
prompt("Welcome to Calculator! Please enter your name: ")
# We call the method prompt and pass this string in as an argument for the parameter "message"
# We will repeat this for the rest of the messages
# Please enter your name: we want to validate that the user does enter a valid response:
name = '' # so the variable name can be accessed outside of the below loop
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

# We also want to ask the user after they completed their computation if they'd like to do another. In order to achieve this, we have to create a main loop - a loop that has the entire process nested inside it:
loop do # Main loop

  num1 = '' #in order for num1 to be accessible outside of the loop below, we have to initialize it outside the loop so it can be accessed globally. This is repeated for num2.(Loops create blocks - can't access variables outside of a block)

  # We want to check if the user inputs are valid numbers, to do this, we create a loop:
  loop do
    # puts "What's the first number?" Instead we want to use our prompt method:
    prompt("What's the first number?")
    num1 = gets.chomp

    # check for valid answer:
    if valid_number?(num1)  # create a valid_number method - above
      break #break out of the loop because it is a valid number
    else
      prompt("Hmmm...that doesn't look like a valid number.")
    end
  end

  num2 = '' # so num2 can be accessed outside of the loop below:

  loop do
    # puts "What's the second number?" Instead we want to use our prompt method:
    prompt("What's the second number?")
    num2 = gets.chomp

    # check for valid answer:
    if valid_number?(num2)
      break
    else
      prompt("Hmmm...that doesn't look like a valid number.")
    end
  end

  # puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide" Instead we want to use our prompt method:
  # We also want this prompt to be multi-lined to make it easier to read
  operator_prompt = <<-MSG  #the letters MSG can be anything, as long as they match each other
    What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG
  prompt(operator_prompt)
  
  # We want to make sure the user inputs only 1, 2, 3, or 4. Again we create a loop to verify this:
  operation = '' #again, to make sure the variable operation is accessible outside of the loop:
  loop do
    operation = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operation) #Ruby arrays has an .include?() method (remember, the user input will be strings!)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end
  # %w(foo bar) is a shortcut for ["foo", "bar"]. Meaning it's a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
  
  # if operation == "1" # All inputs will default to being strings
  #   result = num1 + num2
  #   # num1 and num2 are strings, therefore this will concatanate instead of performing the addition operation. Therefore, we need to convert these variables to be integers instead. so we won't use this code - see the IF statement and CASE statement optons below instead
  # end

  # IF statement process - its a bit repeative, so instead we use the CASE statment method below:
  # if operation == "1"
  #   result = num1.to_i + num2.to_i
  # elsif operation == "2"
  #   result = num1.to_i - num2.to_i
  # elsif operation == "3"
  #   result = num1.to_i * num2.to_i
  # else
  #   result = num1.to_f / num2.to_f
  # end
  # Division is a special case here because if we were to divide with a result needing a remainder, simply using result = num1.to_i / num2.to_i would not give us the remainder. Instead, we use the method to_f (to float)

## To display to the user what operation they chose we are going to employ a method we create and call it here
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


  # puts "The result is #{result}."
  # Because the if statement doesn't make a block, the result variable is available outside of the statement - hence why we can call it below

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation (Y or N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y') # If answer is Y, it loops, if not, it breaks from the loop
  # start_with? is a ruby method
end # end of Main Loop

# After leaving the loop, give a final message to user:
prompt("Thank you for using this calculator tool. Goodbye!")