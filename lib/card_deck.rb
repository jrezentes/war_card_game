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

  def deal(number_of_players)

    player_array = Array.new(number_of_players)
    player_array.each {|player| player = Array.new(1)}

    @deck.each() do |card|
      player_array.each() do |player|
        player.push(card)
        @deck.pop(card)
      end
    end

    player_array.each() do |player|
      player.compact()
    end
  end
end
