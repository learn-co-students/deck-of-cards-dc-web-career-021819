require 'pry'
# class Deck
#   attr_accessor :cards, :suits, :rank
#   # @@cards = []
#   @@suits = ["Heart", "Club", "Diamond", "Spade"]
#   @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
#   def initialize
#     @@cards = []
#     @@suits.each do |x|
#       @@rank.each do |y|
#         @@cards << Card.new(x, y)
#       end
#     end
#   end
#   def cards
#     @@cards
#   end
#
#   def choose_card
#     r = rand(1..@@cards.length)
#     @@cards[r-1]
#     @@cards.delete_at(r)
#   end
# end

class Deck
  attr_accessor :cards
  def initialize
    suits = ["Heart", "Club", "Diamond", "Spade"]
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @cards = []
    suits.each do |x|
      rank.each do |y|
        @cards << Card.new(x, y)
      end
    end
  end
  def choose_card
    @cards.delete_at(rand(@cards.length))
  end

end

class Card
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end
