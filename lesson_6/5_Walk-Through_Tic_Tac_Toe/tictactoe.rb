require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "The first player to reach 5 wins the game."
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
  new_board # => { 1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}
end

def joinor(brd, punc = ', ', conc = 'or')
  if brd.length == 2
    brd.join(' ').insert(-2, conc + ' ')
  elsif brd.length == 1
    brd.join
  else
    brd.join(punc).insert(-2, conc + ' ')
  end
end

def empty_squares(brd) # => [1, 2, 3, 4, 5, 6, 7, 8, 9], array shortens as game continues
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):" # => "1, 2, 3, 4, 5, 6, 7, 8, 9" or less as game continues
    square = gets.chomp.to_i # => user enters an integer
    break if empty_squares(brd).include?(square) # => breaks if integer is in [1, 2, 3, 4, 5, 6, 7, 8, 9]
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER # => place "X" in board hash
end

def board_full?(brd) # => []?
  empty_squares(brd).empty?
end

def someone_won?(brd) # => forces object into boolean
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line| # => performed on each subarray (e.g. brd.[1, 2, 3].count('X' or 'O'))
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
computer_wins = 0

loop do
  board = initialize_board # => { 1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}
  # => board will have "X" and "O" values as game continues

  loop do
    display_board(board) # => creates filled visual board with "X", "O", and " " in boxes

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} wins!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == "Player"
    player_wins += 1
    prompt "Player won #{player_wins} times. Computer won #{computer_wins} times."
  else detect_winner(board) == "Computer"
    computer_wins += 1
    prompt "Player won #{player_wins} times. Computer won #{computer_wins} times."
  end

  if player_wins == 5 || computer_wins == 5
    prompt "Play again? (y or n)"
    answer = gets.chomp
  end

  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"

