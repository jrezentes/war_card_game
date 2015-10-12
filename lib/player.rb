class Player
  def initialize(deck:)
     @cards = deck
  end

  def has_cards?()
    @cards.empty?() == false
  end

  def hand()
    @cards
  end

  def play_card()
    @cards.pop()
  end

  def take_cards(cards_on_table)
    cards_on_table.each() do |card|
      @cards.push(card)
    end
  end

  def win_round()
  end

end
