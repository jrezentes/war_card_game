class Player
  def initialize(deck)
     @cards = deck
  end

  def has_cards?()
    @cards.empty?() == false
  end

  def card()
    @cards
  end

  def play_card()
    @cards.pop()
  end

  def take_cards(card)
    @cards.push(card)
  end
end
