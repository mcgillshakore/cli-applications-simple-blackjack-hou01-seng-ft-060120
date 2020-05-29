def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  card_number = rand(1..11)
  card_number
end

def display_card_total(deal_card)
  card_total = deal_card
 puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  cards_total = first_card + second_card
  display_card_total(cards_total)
  cards_total
end

def hit?(cards_total)
 prompt_user
 user_input = get_user_input
 if user_input == 's'
   # nothing
    elsif user_input == 'h'
    new_card = deal_card
   cards_total += new_card
  else 
      invalid_command
      prompt_user
      get_user_input
  end
  cards_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  cards_total = 0
  welcome
  cards_total = initial_round
  cards_total= hit?(cards_total)
  until cards_total > 21
    cards_total = hit?(cards_total)
    cards_total = display_card_total(cards_total)
  end
  end_game
end
    
