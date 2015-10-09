class War

  def initialize(player1, player2)

    @player1 = player1
    @player2 = player2

  end

  def play_hand()

    cards_played = []

    player1_card = @player1.play_card()
    player2_card = @player2.play_card()

    cards_played.push(player1_card)
    cards_played.push(player2_card)

    if player1_card.rank() > player2_card.rank()
      cards_played.each {|card| @player1.cards().push(card)}
    elsif player2_card.rank() > player1_card.rank()
      cards_played.each {|card| @player2.cards().push(card)}
    elsif player1_card.rank() == player2_card.rank()

    end
  end
end
