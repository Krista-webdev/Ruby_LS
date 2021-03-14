# Variables
VALID_CHOICES = ["rock", "paper", "scissors", "spock", "lizard"]

WINNING_CHOICES = {
  rock: ["lizard", "scissors"],
  paper: ["rock", "spock"],
  scissors: ["lizard", "paper"],
  spock: ["scissors", "rock"],
  lizard: ["paper", "spock"]
}

score = {
  player: 0,
  computer: 0
}

# Methods
def prompt(message)
  puts("=> #{message}")
end

def line_break
  prompt("--------------------------------")
end

def greeting
  prompt("Welcome to the game Rock, Paper, Scissors, Lizard or Spock!")
  prompt("To be the Grand Winner, reach 5 wins first!")
  line_break
end

def win?(first, second)
  WINNING_CHOICES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Sorry, the Computer won this round!")
  else
    prompt("It's a tie!")
  end
end

def score_tracker(player, computer, score)
  if win?(player, computer)
    score[:player] += 1
    prompt("You get 1 point!")
  elsif win?(computer, player)
    score[:computer] += 1
    prompt("The computer gets 1 point!")
  else
    prompt("No points awarded.")
  end
end

def confirm_winner(score)
  loop do
    if score[:player] == 5
      line_break
      prompt "Congratulations, you are the Grand Winner!"
      reset_total(score)
    elsif score[:computer] == 5
      line_break
      prompt "Sorry, the Computer is the Grand Winner :("
      reset_total(score)
    end
    break
  end
end

def reset_total(score)
  score[:player] = 0
  score[:computer] = 0
end

def play_again?
  answer = ""
  loop do
    line_break
    prompt("Would you like to play again? Y or N")
    answer = gets.chomp.downcase
    break if valid_response?(answer)
    prompt("That is not a valid response")
  end
  answer == "y"
end

def valid_response?(answer)
  ["y", "n"].include? answer
end

def player_choice(choice)
  loop do
    prompt("Make your choice: rock, paper, scissors, spock or lizard:")
    choice << gets.chomp.downcase
    break if VALID_CHOICES.include?(choice)
    prompt("That's not a valid choice.")
  end
end

# Game
greeting

loop do
  choice = ""

  player_choice(choice)

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  score_tracker(choice, computer_choice, score)

  confirm_winner(score)

  break unless play_again?
end

prompt("Thank you for playing. Goodbye!")
