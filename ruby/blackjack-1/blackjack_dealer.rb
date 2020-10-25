require './blackjack_hands.rb'

class BlackjackDealer
  attr_accessor :hands
  def initialize
    self.hands = BlackjackHands.new
  end
  def hit(card:)
    hands.add(card: card)
  end
  def first_card
    hands.first
  end
  def point
    hands.point
  end
end
