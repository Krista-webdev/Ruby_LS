VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer) # our commented out if/else statement below is instead recreated in a new method using the same logic:
  if (player == "rock" && computer == "scissors") ||
     (player == "paper" && computer == "rock") ||
     (player == "scissors" && computer == "paper")
    prompt("You won!")
  elsif (player == "scissors" && computer == "rock") ||
        (player == "rock" && computer == "paper") ||
        (player == "paper" && computer == "scissors")
    prompt("Sorry, the Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do # main execution loop
  choice = "" # to keep this variable in-scope, it must be declared outside of our loop
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(", ")}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  # if (choice == "rock" && computer_choice == "scissors") ||
  #   (choice == "paper" && computer_choice == "rock") ||
  #   (choice == "scissors" && computer_choice == "paper")
  #       prompt("You won!")
  # elsif (choice == "scissors" && computer_choice == "rock") ||
  #       (choice == "rock" && computer_choice == "paper") ||
  #       (choice == "paper" && computer_choice == "scissors")
  #         prompt("Sorry, the Computer won!")
  # else
  #   prompt("It's a tie!")
  # end

  display_results(choice, computer_choice) # instead of initializing the logic inside our main loop, we created a method that contained the main logic of the game and call it here, passing it the arguments of choice and computer_choice

  prompt("Do you want to play again? Y or N")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
