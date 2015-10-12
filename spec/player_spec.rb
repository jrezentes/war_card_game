require('spec_helper')

describe('Player') do
  describe('#has_cards?') do
    it('player has cards') do
      test_card = PlayingCard.new(rank: 'J',suit: 'Spades')
      test_player = Player.new(deck: [test_card])
      expect(test_player.has_cards?()).to(eq(true))
    end
  end

  describe('#play_card') do
    it('player plays top card from deck/(last element in array)') do
      test_card0 = PlayingCard.new(rank: 'J', suit: 'Spades')
      test_card1 = PlayingCard.new(rank: '5',suit: 'Hearts')
      test_player = Player.new(deck: [test_card0, test_card1])
      expect(test_player.play_card()).to(eq(test_card1))
    end

    it('removes the played card from players deck') do
      test_player = Player.new(deck: ["6 Spades", "8 Hearts"])
      test_player.play_card()
      expect(test_player.hand()).to(eq(["6 Spades"]))
    end
  end
  describe('#win') do
    it('returns true if player wins round') do
      test_card0 = PlayingCard.new(rank: 'J',suit: 'Spades')
      test_card1 = PlayingCard.new(rank: '5',suit: 'Hearts')
      test_card2 = PlayingCard.new(rank: 'J',suit: 'Spades')
      test_card3 = PlayingCard.new(rank: '7',suit: 'Hearts')
      test_player = Player.new(deck: [test_card0, test_card1])
      test_player2 = Player.new(deck: [test_card2, test_card3])
      test_game = War.new( player1: test_player, player2: test_player2)
      expect(test_game.round_winner()).to eq('player2')
    end
  end
end
