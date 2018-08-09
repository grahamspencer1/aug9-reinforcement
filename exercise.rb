class Deck

  def initialize
    @cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def deal
    @cards.sample
  end

end

class Dealer

  def initialize
    @cards_foe = [16, 17, 18, 19, 20, 21]
  end

  def deal_foe
    @cards_foe.sample
  end

end


class Hand

  def initialize
    @hand = []
  end

  def score
    score = 0
    @hand.each do |number|
      score += number
    end
    return score
  end

  def add_card(card)
    @hand << card
    return @hand
  end

end

def game

  player = Deck.new
  foe = Dealer.new
  hand = Hand.new

  to_beat = foe.deal_foe

  puts "Draw a card?"
  while hand.score <= 21
    answer = gets.chomp
    if answer.downcase == 'y'
      hand.add_card(player.deal)
      puts "Your score is #{hand.score}. Draw again?"
    else
      puts "Your score is #{hand.score}. The dealer's score is #{to_beat}."
      if hand.score > to_beat
        return "You win!"
      else
        return "You lose!"
      end
    end
  end
  return "You went over 21!"
end

puts game
