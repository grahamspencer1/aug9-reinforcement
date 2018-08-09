def select_cards(possible_cards, hand)
  cards = 0
  total = 0 # created this to make sure program doesn't loop infinitely
  while cards < 3 && total < 5
    possible_cards.each do |current_card|
      if cards < 3
        print "Do you want to pick up #{current_card}?"
        answer = gets.chomp
        if answer.downcase == 'y'
          hand << current_card
          cards += 1
          total += 1
        else
          total += 1
        end
      end
    end
  end
  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"

# Do you want to pick up queen of spades?y
# Do you want to pick up 2 of clubs?n
# Do you want to pick up 3 of diamonds?n
# Do you want to pick up jack of spades?y
# Do you want to pick up queen of hearts?y
# Your new hand is:
# queen of spades
# jack of spades
# queen of hearts
