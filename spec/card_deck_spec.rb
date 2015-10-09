require('rspec')
require('card_deck')
require('playing_card')
require('player')

describe('CardDeck') do

  describe('#deck') do
    it('is default set with a standard 52 card deck') do
    test_deck = CardDeck.new()
    expect(test_deck.deck().length()).to(eq(52))
    end
  end

  describe('#shuffle') do
    it('it shuffles the card deck') do
      test_deck = CardDeck.new()
      test_deck.shuffle()
      test_deck2 = CardDeck.new()
      expect(test_deck.deck()).not_to eq(test_deck2.deck())
    end
  end

  describe('#deal') do
    it('it deals out to two players') do
      player1 = Player.new([])
      player2 = Player.new([])
      test_deck = CardDeck.new()
      number_of_players = [player1, player2].length()
      test_deck.deal(number_of_players)
      expect(test_deck.deal().length()).to(eq(2))
    end
  end
end
