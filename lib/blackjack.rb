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

def initial_round(deal_card)
  first_card = deal_card
end

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
