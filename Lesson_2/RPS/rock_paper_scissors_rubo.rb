VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts("=> #{message}")
end

# Redoing the display_results method from original --
# Note that the logic for who won was just the reverse of one another
# Created a new method to sort out the logic of who won:
def win?(first, second)
  (first == "rock" && second == "scissors") ||
  (first == "paper" && second == "rock") ||
  (first == "scissors" && second == "paper")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Sorry, the Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do # main execution loop
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  # instead of initializing the logic inside our main loop
  # we created a method that contained the main logic of the game
  # and call it here, passing it the arguments of choice and computer_choice

  prompt("Do you want to play again? Y or N")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
