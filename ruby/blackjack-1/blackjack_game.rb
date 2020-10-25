require './blackjack_dealer.rb'
require './blackjack_player.rb'
require './blackjack_card.rb'

class BlackjackGame
  attr_accessor :cards, :dealer, :player
  def initialize
    self.cards  = shuffled_cards
    self.dealer = BlackjackDealer.new
    self.player = BlackjackPlayer.new

    dealer.hit(card: cards.pop)
    player.hit(card: cards.pop)
    dealer.hit(card: cards.pop)
    player.hit(card: cards.pop)
  end

  def match
    if player.point > dealer.point
      'WIN'
    else
      'LOSE'
    end
  end

  def player_hit
    player.hit(card: cards.pop)
  end

  def dealer_should_hit?
    dealer.point < 17
  end

  def dealer_hit
    dealer.hit(card: cards.pop)
  end


  private

  def shuffled_cards
    CardSymbol.all.product(CardNumber.all)
      .map { |symbol, number| Card.new(card_symbol: symbol, card_number: number) }
      .map { |card| BlackjackCard.new(card: card) }
      .shuffle
  end
end
