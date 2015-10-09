class War

  def initialize(player1, player2)

    @player1 = player1
    @player2 = player2

  end

  def play_hand()
    cards_played ||= []
    if @player1.cards().length() == 0 && @player2.cards().length() == 0
      return "Everyone Loses!"
    elsif @player1.cards().length() == 0 && @player2.cards().length() != 0
      cards_played.each {|card| @player2.take_cards(card)}
    elsif @player1.cards().length() != 0 && @player2.cards().length() == 0
      cards_played.each {|card| @player1.take_cards(card)}
    end

    player1_card = @player1.play_card()
    player2_card = @player2.play_card()
    cards_played.push(player1_card)
    cards_played.push(player2_card)

    if player1_card.rank() > player2_card.rank()
      cards_played.each {|card| @player1.take_cards(card)}
    elsif player2_card.rank() > player1_card.rank()
      cards_played.each {|card| @player2.take_cards(card)}
    elsif player1_card.rank() == player2_card.rank()
      play_hand()
        if @player1.play_card().rank() > @player2.play_card().rank()
          cards_played.each {|card| @player1.take_cards(card)}
        elsif @player1.play_card().rank() < @player2.play_card().rank()
          cards_played.each {|card| @player2.take_cards(card)}
        end
    end
  end

  def game_over()
    if @player1.cards() == 0
      true
    elsif @player2.cards() == 0
      true
    elsif @player1.cards() == 0 && @player2.cards() == 0
      true
    else
      false
    end
  end

end
