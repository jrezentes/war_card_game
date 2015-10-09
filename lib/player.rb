class Player

    
  def initialize(deck)
     @deck = deck
  end

  def has_cards?()
    @deck.empty?() == false
  end

  def cards()
    @deck
  end

  def play_card()
    @deck.pop()
  end
end
