require './card.rb'

class BlackjackCard
  attr_accessor :card
  def initialize(card:)
    self.card = card
  end
  def point
    case card.number
    when CardNumber::ONE
      1
    when CardNumber::JACK, CardNumber::QUEEN, CardNumber::KING
      10
    else
      card.number
    end
  end
  def show
    "#{card.show}"
  end
end
