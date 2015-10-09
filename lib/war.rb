class War
  def initialize(player1, player2)

    @player1 = player1
    @player2 = player2

  end



  def play_hand()
    cards_played = []

    @player1.play_card() = player1_string
    @player2.play_card() = player2_string
    player1_current_card = player1_string.split('')
    player2_current_card = player2_string.split('')
    cards_played.push(player1_string)
    cards_played.push(player2_string)
    player1_current_rank = player1_current_card[0].to_i
    player2_current_rank = player2_current_card[0].to_i

    if player1_current_rank > player2_current_rank
      cards_played.each {|card| card << @player1}
    elsif player2_current_rank > player1_current_rank
      cards_played.each {|card| card << @player1}
    end
  end
end
