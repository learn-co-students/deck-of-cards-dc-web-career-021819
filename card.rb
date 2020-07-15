class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end
