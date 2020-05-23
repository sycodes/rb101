WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

first = ''
current = ''

scores = { "player" => 0, "computer" => 0 }

play_again = ''

def prompt(msg)
  puts "=> #{msg}"
end

def welcome
  prompt "-------Welcome to Tic-Tac-Toe!-------"
  prompt "The first player to win five rounds wins the game."
end

def player_first(first)
  prompt "Do you want to go first? Please type y or n: "
  answer = gets.chomp.downcase

  loop do
    if answer.start_with?("y")
      first << "player"
      break
    elsif answer.start_with?("n")
      first << "computer"
      break
    else
      prompt "That is not a valid answer. Please type y or n: "
      answer = gets.chomp.downcase
    end
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current)
  if current == 'computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

def alternate_player(current)
  if current == 'computer'
    'player'
  else
    'computer'
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    return board.select do |k, v|
      line.include?(k) && v == INITIAL_MARKER
    end.keys.first
  end
  nil
end

def computer_best_square(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, marker)
    break if square
  end
  square
end

def computer_places_piece!(brd)
  square = computer_best_square(brd, COMPUTER_MARKER)
  square = computer_best_square(brd, PLAYER_MARKER) if !square
  square = 5 if brd[5] == INITIAL_MARKER
  square = empty_squares(brd).sample if !square
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd) # => player inputs integers only
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    if empty_squares(brd).include?(square.to_i) && square.to_i.to_s == square
      square = square.to_i
      break
    end
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "computer"
    end
  end
  nil
end

def total_count(scores)
  prompt "Player won #{scores['player']} times."
  prompt "Computer won #{scores['computer']} times."
end

def winner(scores)
  if scores["player"] == 5
    "Player"
  elsif scores["computer"] == 5
    "Computer"
  end
end

def update_scores(winner, scores)
  if winner == "player" || winner == "computer"
    scores[winner] += 1
  end
end

def grand_winner(scores)
  if scores["player"] == 5 || scores["computer"] == 5
    true
  else
    false
  end
end

#----------MAIN GAME----------#

loop do
  welcome
  player_first(first)
  current = first

  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current)
      current = alternate_player(current)
      break if someone_won?(board) || board_full?(board)
    end

    loop do
      display_board(board)

      if someone_won?(board)
        prompt "#{detect_winner(board).capitalize} wins!"
      else
        prompt "It's a tie!"
      end

      winner = detect_winner(board)
      update_scores(winner, scores)

      total_count(scores)

      current = first

      prompt "Press any key to continue."
      continue = gets.chomp

      break if continue
    end

    if grand_winner(scores)
      system 'clear'
      prompt "#{winner(scores)} is the final winner!"
      loop do
        prompt "Play again? Please type y or n: "
        play_again = gets.chomp.downcase
        break if play_again.start_with?("y", "n")
        prompt "Sorry, that is not a valid choice."
      end
    end

    break if !play_again.nil? && play_again.downcase.start_with?("n")

    if !play_again.nil? && play_again.downcase.start_with?("y")
      current = ''
      first = ''
      play_again = ''
      scores = { "player" => 0, "computer" => 0 }
      player_first(first)
      current = first
      next
    end
  end

  break if play_again.start_with?("n")
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
