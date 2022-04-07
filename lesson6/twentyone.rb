player_cards = []
dealer_cards = []
deck = [["2/Hearts", 2], ["3/Hearts", 3], ["4/Hearts", 4], ["5/Hearts", 5],
        ["6/Hearts", 6], ["7/Hearts", 7], ["8/Hearts", 8], ["9/Hearts", 9],
        ["10/Hearts", 10], ["Jack/Hearts", 10], ["Queen/Hearts", 10],
        ["King/Hearts", 10], ["Ace/Hearts", 11], ["2/Diamonds", 2],
        ["3/Diamonds", 3], ["4/Diamonds", 4], ["5/Diamonds", 5],
        ["6/Diamonds", 6], ["7/Diamonds", 7], ["8/Diamonds", 8],
        ["9/Diamonds", 9], ["10/Diamonds", 10], ["Jack/Diamonds", 10],
        ["Queen/Diamonds", 10], ["King/Diamonds", 10], ["Ace/Diamonds", 11],
        ["2/Clubs", 2], ["3/Clubs", 3], ["4/Clubs", 4], ["5/Clubs", 5],
        ["6/Clubs", 6], ["7/Clubs", 7], ["8/Clubs", 8], ["9/Clubs", 9],
        ["10/Clubs", 10], ["Jack/Clubs", 10], ["Queen/Clubs", 10],
        ["King/Clubs", 10], ["Ace/Clubs", 11], ["2/Spades", 2], ["3/Spades", 3],
        ["4/Spades", 4], ["5/Spades", 5], ["6/Spades", 6], ["7/Spades", 7],
        ["8/Spades", 8], ["9/Spades", 9], ["10/Spades", 10], ["Jack/Spades", 10],
        ["Queen/Spades", 10], ["King/Spades", 10], ["Ace//Spades", 11]]

def just_the_cards(array)
  array.map do |type|
    type[0]
  end
end

def initial_dealing(hand, deck)
  hand << deck.sample
  hand << available_deck(hand, deck).sample
end

def available_deck(hand, deck)
  deck.select do |card|
    !(hand.include?(card))
  end
end

def busted?(hand)
  total = []
  hand.map do |card|
    total << card[1]
  end
  total.sum > 21
end

def card_value(hand)
  total = []
  hand.select do |card|
    total << card[1]
  end
  total.sum
end

def ace_value(hand, deck)
  sum = 11
  card_type = deck.map { |card| card[0] }
  card_type.select { |card| card.start_with?("A") }.count.times do
    sum -= 10 if card_value(hand) >= 21
  end
  sum
end

def hit(hand, deck)
  hand << deck.sample
  if hand.last[0].include?("Ace")
    value = ace_value(hand, deck)
    hand.last[1] = value
  else
    hand
  end
end

def display_result(player_cards, dealer_cards)
  puts "Player's final cards are #{just_the_cards(player_cards)}"
  puts "Dealer's final cards are: #{just_the_cards(dealer_cards)}"
end

def winner_is?(player_cards, dealer_cards)
  if busted?(player_cards) || busted?(dealer_cards)
    nil
  elsif (card_value(player_cards) > card_value(dealer_cards)) &&
        !busted?(player_cards)
    puts "Player won!"
  elsif (card_value(player_cards) < card_value(dealer_cards)) &&
        !busted?(dealer_cards)
    puts "Dealer won!"
  else
    puts "It's a tie!"
  end
end

answer = nil

loop do # main loop
  player_cards = []
  dealer_cards = []
  puts "Player's cards are: #{just_the_cards(initial_dealing(player_cards, deck))}"
  puts "Dealer's card is: #{just_the_cards(initial_dealing(dealer_cards, deck)).first}"

  loop do
    puts "hit or stay?"
    answer = gets.chomp.downcase
    if answer.start_with?("h")
      hit(player_cards, available_deck(player_cards, deck))
      p just_the_cards(player_cards)
    end
    break if answer.start_with?("s") || busted?(player_cards)
  end

  if busted?(player_cards)
    puts "It's a bust. You've lost!"
    break
  else
    puts "You chose to stay!"
  end

  loop do
    break if busted?(dealer_cards)
    hit(dealer_cards, deck) until card_value(dealer_cards) >= 17
    p "Dealer's cards are: #{just_the_cards(dealer_cards)}"
    break if busted?(dealer_cards) || card_value(dealer_cards) >= 17
  end

  if busted?(dealer_cards)
    puts "It's a bust on the dealer's side! You won!"
  end

  display_result(player_cards, dealer_cards)
  winner_is?(player_cards, dealer_cards)

  puts "Do you wish to play again? (y/n)?"
  play_again_answer = gets.chomp
  break unless play_again_answer.start_with?("y")

  puts "Thank you for playing Twenty-One!"
end
