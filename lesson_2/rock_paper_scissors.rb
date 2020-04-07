VALID_CHOICES = {
   'r' => 'rock',
   'p' => 'paper',
   'sc' => 'scissors',
   'l' => 'lizard',
   'sp' => 'spock'
 }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'spock') ||
  (first == 'lizard' && second == 'paper') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'spock' && second == 'rock')
 end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

prompt(">>Welcome to the Rock Paper Scissors program!")
prompt(">>The player who reaches five wins is the grand winner.")

loop do
  pwins = 0
  cwins = 0

  loop do
    choice = ''

    loop do
      prompt("Rock, paper, scissors, lizard, or spock?")
      prompt("Please enter r, p, sc, l, or sp.")
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.key?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample
    choice = VALID_CHOICES[choice]

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      pwins += 1
      prompt("Player won #{pwins} times.")
    elsif win?(computer_choice, choice)
      cwins += 1
      prompt("Computer won #{cwins} times.")
    end

    break if pwins == 5 || cwins == 5
  end

  if pwins == 5
    prompt("Player is the grand winner!")
  elsif cwins == 5
    prompt("Computer is the grand winner!")
  end

  prompt("Do you want to play again?")
  play_again = Kernel.gets().chomp()
  break unless play_again.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")