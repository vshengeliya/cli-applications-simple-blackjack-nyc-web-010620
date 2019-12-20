  # expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")


def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?
   get_user_input
   display_card_total 
  if prompt_user =="h"
    deal_card
    elsif prompt_user =="s"
    nil
  else
    puts invalid_command
  end 
end

# #####################################################
# # get every test to pass before coding runner below #
# #####################################################

# def runner
#   # code runner here
# end
    
