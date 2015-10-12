require 'pry'

class War

  def initialize( player1: , player2:)

    @player1 = player1
    @player2 = player2
  end

  def play_round(cards_on_table: [])
binding.pry
    player1_card = @player1.play_card()
    player2_card = @player2.play_card()

    cards_on_table.push(player1_card)
    cards_on_table.push(player2_card)

    if player1_card.rank() > player2_card.rank()
      winner = 'player1'
      @player1.take_cards(cards_on_table)
      return
    elsif player1_card.rank() < player2_card.rank()
      winner = 'player2'
      @player2.take_cards(cards_on_table)
      return
    else
      winner = 'tie'
      return play_round(cards_on_table: cards_on_table)
    end
  end
end
