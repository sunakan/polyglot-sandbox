require './blackjack_game.rb'

def current_status(game:)
  puts '-----------------------------------'
  puts "Dealer: #{game.dealer.first_card.show}"
  puts "Player: #{game.player.hands.show}"
end

def action
  loop do
    puts 'Hit/Stand ?(h/s)'
    a = gets.chop
    if a=='h' || a=='s'
      return a
    else
      puts 'Please, input key "h" or "s"'
    end
  end
end

def player_turn(game:)
  puts '-----------------------------------Player Turn'
  loop do
    a = action()
    if a == 'h'
      puts 'Hit'
      game.player_hit
      puts "Player: #{game.player.hands.show}"
    else
      return
    end
  end
end

def dealer_turn(game:)
  puts '-----------------------------------Dealer Turn'
  puts "Dealer: #{game.dealer.hands.show}"
  loop do
    if game.dealer_should_hit?
      game.dealer_hit
      puts "Dealer: #{game.dealer.hands.show}"
    else
      puts "Dealer: #{game.dealer.hands.show}"
      return
    end
  end
end

game = BlackjackGame.new

current_status(game: game)
player_turn(game: game)
dealer_turn(game: game)

puts '-----------------------------------'
p game.match
