class Deck

  def initialize
    @cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def deal
    @cards.sample
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

  deck = Deck.new
  hand = Hand.new
  puts "Draw a card?"
  while hand.score <= 21
    answer = gets.chomp
    if answer.downcase == 'y'
      hand.add_card(deck.deal)
      puts "Your score is #{hand.score}. Draw again?"
    else
      return "Your score is #{hand.score}."
    end
  end
  return "You went over 21!"
end

p game
