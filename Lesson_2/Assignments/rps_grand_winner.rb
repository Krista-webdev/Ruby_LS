# Keep score of the player's and computer's wins. When either the player or computer reaches five wins, the match is over, and the winning player becomes the grand winner. Don't add your incrementing logic to display_results. Keep your methods simple; they should perform one logical task — no more, no less. think about eliminating repetitive code from the winning combinations method by DRYing your code. Write the "natural" version of the method using a bunch of conditions, then identify the repetitive code in that method. Once you have it, write a method that you can call with different arguments.

VALID_CHOICES = ["rock", "paper", "scissors", "spock", "lizard"]

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  result = (first == "rock" && second == "scissors") ||
           (first == "paper" && second == "rock") ||
           (first == "scissors" && second == "paper") ||
           (first == "rock" && second == "lizard") ||
           (first == "lizard" && second == "spock") ||
           (first == "spock" && second == "scissors") ||
           (first == "scissors" && second == "lizard") ||
           (first == "lizard" && second == "paper") ||
           (first == "paper" && second == "spock") ||
           (first == "spock" && second == "rock")
  result
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

  prompt("Do you want to play again? Y or N")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
