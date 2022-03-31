INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]] # diag

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're X. Computer is O"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ''
end
# rubocop:enable Metrics/AbcSize

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    puts "Choose a square(#{empty_square(brd).join(', ')}:"
    square = gets.chomp.to_i
    break if empty_square(brd).include?(square)
    puts "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_square(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_square(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
   WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def place_piece!(brd, current_player)
  player_places_piece!(brd) if current_player == "Player"
  computer_places_piece!(brd) if current_player == "Computer"
end 

def alternative_player(current_player)
  if current_player == "Player"
    "Computer"
  else
    "Player"
  end 
end 

current_player = "Player"
loop do
  
  board = initalize_board

  loop do
    display_board(board)
  place_piece!(board, current_player)
  current_player = alternative_player(current_player)
  break if someone_won?(board) || board_full?(board)
end

  display_board(board)

  if someone_won?(board)
    puts "#{detect_winner(board)} won!"
  else
    puts "It's a tie!"
  end

  puts "Play again? ( y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing Tic Tac Toe! Goodbye!"
