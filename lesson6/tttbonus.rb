INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diag

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd)
  system 'clear'
  puts "You're X. Computer is O."
  puts "First to score five wins the game!"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
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
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, punctuation = ", ", word = "or")
  if array.count > 2
    stringed = array.join(punctuation)
    stringed.insert(-2, word + " ")
  else
    array.join(" " + word + " ")
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    puts "Choose a square (#{joinor(empty_square(brd))}):"
    square = gets.chomp.to_i
    break if empty_square(brd).include?(square)
    puts "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = empty_square(brd).sample
  end

  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    brd[square] = COMPUTER_MARKER
  end
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

player = 0
computer = 0

loop do
  puts "Who chooses who goes first? (p for Player, c for Computer)"
  who_chooses = gets.chomp

  if who_chooses.downcase.start_with?("c")
    who_goes_first = ["p", "c"].sample
  else who_chooses.downcase.start_with?("p")
    puts "Who's playing first? (p for Player, c for Computer) "
    who_goes_first = gets.chomp.downcase
  end

  board = initalize_board

  if who_goes_first.downcase.start_with?("p")
    current_player = "Player"

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternative_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
  end

  if who_goes_first.downcase.start_with?("c")
    square = empty_square(board).sample
    board[square] = COMPUTER_MARKER

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternative_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board)

  if detect_winner(board) == "Player"
    player += 1
  elsif detect_winner(board) == "Computer"
    computer += 1
  else
    player
    computer
  end

  if someone_won?(board)
    puts "#{detect_winner(board)} won this round!"
    puts "Score: Player = #{player}, Computer = #{computer}."
  else
    puts "It's a tie!"
  end

  if player == 5 || computer == 5
    puts "Game Over! #{detect_winner(board)} has won five games!"
    break
  end

  puts "Play again? ( y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing Tic Tac Toe! Goodbye!"
