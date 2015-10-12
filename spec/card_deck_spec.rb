require('rspec')
require('card_deck')
require('playing_card')
require('player')

describe('CardDeck') do
  describe('#intialize') do
    it('is default set with a standard 52 card deck') do
    test_deck = CardDeck.new()
    expect(test_deck.cards().length()).to(eq(52))
    end

    it('can be set to a different type of deck') do
      test_deck = CardDeck.new(type: "21")
      expect(test_deck.cards()).to eq([])
    end
  end

  describe('#shuffle') do
    it('it shuffles the card deck') do
      test_deck = CardDeck.new()
      test_deck.shuffle()
      test_deck2 = CardDeck.new()
      expect(test_deck.cards()).not_to eq(test_deck2.cards())
    end

    it('each shuffle is different') do
      test_deck = CardDeck.new()
      test_deck.shuffle()
      test_deck2 = CardDeck.new()
      test_deck2.shuffle()
      expect(test_deck.cards()).not_to eq(test_deck2.cards())
    end
  end

  describe('#deal') do
    it('it deals out to two players') do

      player1 = Player.new(deck: [])
      player2 = Player.new(deck: [])
      test_deck = CardDeck.new()
      test_deck.deal(player1: player1, player2: player2)
      expect(player1.hand().length()).to eq(26)
      expect(player2.hand().length()).to eq(26)
    end

    it('deals two different hands to both players') do
      player1 = Player.new(deck: [])
      player2 = Player.new(deck: [])
      test_deck = CardDeck.new()
      test_deck.deal(player1: player1, player2: player2)
      expect(player1.hand()).not_to eq(player2.hand())

    end
  end
end
