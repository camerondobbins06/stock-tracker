class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck

  def initialize
    @cards = []
    @values = [1,2,3,4,5,6,7,8,9,10,"Jack","Queen","King","Ace"]
    @types = [:spades, :diamonds, :clubs, :hearts]
      @values.each do |value|
        @types.each do |type|
          @cards << Card.new(value, type)
        end
      end
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def shuffle
    @cards = @cards.shuffle!
  end

  def deal
    @cards = @cards.shift(1)
  end

end

deck = Deck.new
deck.shuffle
deck.deal
deck.output