require 'pry'

WINNING_NUM = 21
DEALER_STAYS = 17

scores = { "player" => 0, "dealer" => 0 }

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  new_deck = []

  ["Spade", "Diamond", "Club", "Heart"].each do |suit|
    ["Ace", "Jack", "Queen", "King", "2", "3",
     "4", "5", "6", "7", "8", "9", "10"].each do |value|
      new_deck << [suit, value]
    end
  end
  new_deck
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0

  values.each do |value|
    sum += if value == "Ace" then 11
           elsif value.to_i == 0 then 10
           else value.to_i
           end
  end

  values.select { |value| value == "Ace" }.count.times do
    sum -= 10 if sum > WINNING_NUM
  end

  sum
end

def busted?(total)
  total > WINNING_NUM ? true : false
end

def display_total(player_cards, dealer_cards, scores)
  prompt("==============")
  prompt("Dealer has #{dealer_cards} for a total of: #{total(dealer_cards)}.")
  prompt("Dealer has won #{scores['dealer']} times.")
  prompt("Player has #{player_cards} for a total of: #{total(player_cards)}.")
  prompt("Player has won #{scores['player']} times.")
  prompt("==============")
end

def who_won?(player_total, dealer_total)
  if player_total > dealer_total
    prompt("Player wins this round!")
  elsif dealer_total > player_total
    prompt("Dealer wins this round!")
  else
    prompt("It's a tie!")
  end
end

def play_again?
  answer = ''
  loop do
    prompt("Do you want to play again? Please enter y or n: ")
    y_or_n = gets.chomp

    if y_or_n.downcase.start_with?("y", "n")
      answer << y_or_n
      break
    end

    prompt("That is not a valid answer.")
  end

  answer.downcase.start_with?("y")
end

def announce_grand_winner(scores)
  if scores['player'] > scores['dealer']
    prompt("Player won #{scores['player']} times and is the final winner!")
  else
    prompt("Dealer won #{scores['dealer']} times and is the final winner!")
  end
end

def grand_winner(scores)
  scores['player'] == 5 || scores['dealer'] == 5
end

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
def update_scores(player_total, dealer_total, scores)
  if (player_total > dealer_total) && (player_total <= WINNING_NUM)
    scores["player"] += 1
  elsif dealer_total < player_total
    scores["dealer"] += 1
  elsif (dealer_total > player_total) && (dealer_total <= WINNING_NUM)
    scores["dealer"] += 1
  elsif player_total < dealer_total
    scores["player"] += 1
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity

# ----------MAIN GAME ---------- #

prompt("------Welcome to Twenty-One!------")
prompt("--The best of five wins the game!--")

loop do
  deck = initialize_deck.shuffle!
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt("Dealer has #{dealer_cards[0]} and 1 card.")
  prompt("You have #{player_cards}.")

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  answer = nil
  loop do # player's turn
    prompt("Would you pick h(it) or s(tay)?")
    answer = gets.chomp

    loop do
      if !answer.start_with?('h', 's')
        prompt("Sorry, that is not a valid choice. Pick h(it) or s(tay)?")
        answer = gets.chomp
      else
        break
      end
    end

    break if answer.start_with?("s") || busted?(player_total)

    if answer.start_with?("h")
      player_cards << deck.pop
      player_total = total(player_cards)
    end

    prompt("Dealer has #{dealer_cards[0]} and 1 card.")
    prompt("You have #{player_cards}.")

    break if busted?(player_total)
  end

  if busted?(player_total)
    prompt("Dealer wins this round!")
    update_scores(player_total, dealer_total, scores)
    display_total(player_cards, dealer_cards, scores)

    if grand_winner(scores)
      announce_grand_winner(scores)
      scores = { "player" => 0, "dealer" => 0 }
      play_again? ? next : break
    end

    next
  else
    prompt("You chose to stay!")
  end

  loop do
    break if dealer_total >= DEALER_STAYS

    prompt("Dealer chose hit.")
    dealer_cards << deck.pop
    dealer_total = total(dealer_cards)

    prompt("Dealer has #{dealer_cards[0]} and #{dealer_cards.count - 1} cards.")
  end

  if busted?(dealer_total)
    prompt("Player wins this round!")
    update_scores(player_total, dealer_total, scores)
    display_total(player_cards, dealer_cards, scores)

    if grand_winner(scores)
      announce_grand_winner(scores)
      scores = { "player" => 0, "dealer" => 0 }
      play_again? ? next : break
    end

  else
    prompt("Dealer chose to stay!")
    who_won?(player_total, dealer_total)
    update_scores(player_total, dealer_total, scores)
    display_total(player_cards, dealer_cards, scores)

    if grand_winner(scores)
      announce_grand_winner(scores)
      scores = { "player" => 0, "dealer" => 0 }
      break unless play_again?
    end
  end
end

prompt("Thanks for playing Twenty-One. Goodbye!")
