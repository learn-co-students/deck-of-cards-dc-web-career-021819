class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    suits.each do | suit |
      ranks.each do | rank |
        cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    random = rand(0..cards.length)
    cards.delete_at(random)
  end
end
