require 'pry'

class Deck
  attr_accessor :cards

  def initialize
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

    cards_raw = suits.product(ranks)

    # cards_raw.map do |card|
    #   Card.new(card[0], card[1])
    # end
    @cards = cards_raw.map do |card|
      Card.new(card[0], card[1])
    end
  end

  def choose_card
    drawn_card = self.cards.delete(self.cards.sample)
    # "Card: #{drawn_card.rank}-#{drawn_card.suit}"
  end
end

class Card
  attr_accessor :suit, :rank

  @@all  =[]

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    self.rank + "-" + self.suit
  end
end

# ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
# suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
#
# cards = suits.product(rank)



# Card.new("A", "Hearts")
# Card.new("2", "Hearts")
# Card.new("3", "Hearts")
# Card.new("4", "Hearts")
# Card.new("5", "Hearts")
# Card.new("6", "Hearts")
# Card.new("7", "Hearts")
# Card.new("8", "Hearts")
# Card.new("9", "Hearts")
# Card.new("10", "Hearts")
# Card.new("J", "Hearts")
# Card.new("Q", "Hearts")
# Card.new("K", "Hearts")
# Card.new("A", "Clubs")
# Card.new("2", "Clubs")
# Card.new("3", "Clubs")
# Card.new("4", "Clubs")
# Card.new("5", "Clubs")
# Card.new("6", "Clubs")
# Card.new("7", "Clubs")
# Card.new("8", "Clubs")
# Card.new("9", "Clubs")
# Card.new("10", "Clubs")
# Card.new("J", "Clubs")
# Card.new("Q", "Clubs")
# Card.new("K", "Clubs")
# Card.new("A", "Diamonds")
# Card.new("2", "Diamonds")
# Card.new("3", "Diamonds")
# Card.new("4", "Diamonds")
# Card.new("5", "Diamonds")
# Card.new("6", "Diamonds")
# Card.new("7", "Diamonds")
# Card.new("8", "Diamonds")
# Card.new("9", "Diamonds")
# Card.new("10", "Diamonds")
# Card.new("J", "Diamonds")
# Card.new("Q", "Diamonds")
# Card.new("K", "Diamonds")
# Card.new("A", "Spades")
# Card.new("2", "Spades")
# Card.new("3", "Spades")
# Card.new("4", "Spades")
# Card.new("5", "Spades")
# Card.new("6", "Spades")
# Card.new("7", "Spades")
# Card.new("8", "Spades")
# Card.new("9", "Spades")
# Card.new("10", "Spades")
# Card.new("J", "Spades")
# Card.new("Q", "Spades")
# Card.new("K", "Spades")
#

# ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
# suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
#
# cards_raw = suits.product(ranks)
#
#
# binding.pry
#
# jjkl;m
