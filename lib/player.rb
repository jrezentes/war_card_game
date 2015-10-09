class Player
  def initialize(cards)
     @cards = cards
  end

  def has_cards?()
    if @cards.empty?() == true
      false
    else
      true
    end
  end

  def cards()
    @cards
  end

  def play_card()
    @cards.pop()
  end
end
