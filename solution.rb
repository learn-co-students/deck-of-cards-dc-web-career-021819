require 'pry'
class Deck
  attr_reader :suits, :ranks, :cards

  def initialize
    @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @cards = generate_deck
  end

  # choose_card
  def choose_card
    # chooses card at random

    cards.shuffle!.pop
  end

  private

  # generate_deck
  def generate_deck
    deck = []
    @suits.each do |suit|
      @ranks.each do |rank|
        deck << Card.new(suit, rank)
      end
    end
    deck
  end

end

class Card
  attr_reader :rank, :suit
  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end
