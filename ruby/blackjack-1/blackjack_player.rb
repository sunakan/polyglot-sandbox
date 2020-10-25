require './blackjack_hands.rb'

class BlackjackPlayer
  attr_accessor :hands
  def initialize
    self.hands = BlackjackHands.new
  end
  def hit(card:)
    hands.add(card: card)
  end
  def point
    hands.point
  end
end
