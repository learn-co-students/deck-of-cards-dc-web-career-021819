class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

end

class Deck

  attr_accessor :cards

  def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards = []
    suits.each{ |suit|
      ranks.each{ |rank|
        @cards << Card.new(suit, rank)
        }
      }
  end

  def choose_card
    card = self.cards.sample
    self.cards.delete(card)
  end
end
