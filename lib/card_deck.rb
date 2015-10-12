class CardDeck

  attr_reader(:cards)

  def initialize(type: "52 card deck")

    ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    suits = ['Spade', 'Heart', 'Club', 'Diamond']
    @cards = []
    if type == "52 card deck"
      ranks.each() do |rank|
        suits.each() do |suit|
           card = PlayingCard.new(rank: rank, suit: suit)
           @cards.push(card)
        end
      end
    end
  end

  def shuffle()
    @cards.shuffle!()
  end

  def deal(player1: , player2:)

    game_deck = @cards.shuffle()
    player1_deck = player1.hand()
    player2_deck = player2.hand()

    until game_deck.length == 0
      player1_deck.push(game_deck.pop())
      player2_deck.push(game_deck.pop())
    end
  end

end
