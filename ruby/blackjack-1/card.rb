module CardSymbol
  SPADE   = 'spade'
  CLUB    = 'club'
  HEART   = 'heart'
  DIAMOND = 'diamond'
  def self.all
    self.constants.map{ |name| self.const_get(name) }
  end
end

module CardNumber
  ONE   = 1
  TWO   = 2
  THREE = 3
  FOUR  = 4
  FIVE  = 5
  SIX   = 6
  SEVEN = 7
  EIGHT = 8
  NINE  = 9
  TEN   = 10
  JACK  = 11
  QUEEN = 12
  KING  = 13
  def self.all
    self.constants.map{ |name| self.const_get(name) }
  end
end

class Card
  attr_accessor :symbol, :number
  def initialize(card_symbol:, card_number:)
    self.symbol = card_symbol
    self.number = card_number
  end
  def show
    "#{symbol}::#{number}"
  end
end
