class CardDeck


  def initialize()

    ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    suits = ['Spade', 'Heart', 'Club', 'Diamond']
    default_deck = []

    i = 0
    while (i <= ranks.length() - 1) do
      u = 0
      while u <= suits.length() - 1 do
        card = PlayingCard.new(ranks[i], suits[u])
        default_deck.push(card)
        u = u + 1
      end
    i  = i + 1
    end

    @deck ||= default_deck
  end

  def deck()
    @deck
  end

  def shuffle()
    @deck.shuffle!()
  end
end
