require './blackjack_card.rb'

class BlackjackHands
  attr_accessor :hands
  def initialize
    self.hands = []
  end
  def point
    hands.map(&:point).sum
  end
  def add(card:)
    hands.push(card)
  end
  def first
    hands.first
  end
  def show
    a = hands.map { |hand| hand.show }.join(',')
    b = hands.map { |hand| hand.point }.sum().to_s
    "#{a}, SUM: #{b}"
  end
end
