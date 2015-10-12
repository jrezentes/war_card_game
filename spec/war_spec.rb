require 'spec_helper'

describe('#War') do
  describe('#play_round') do
    context('setting values for all my cards, players, games, etc....') do
      let(:test_card0) { PlayingCard.new(rank: 'J', suit: 'Spades') }
      let(:test_card1) { PlayingCard.new(rank: 'A', suit: 'Hearts') }
      let(:test_card2) { PlayingCard.new(rank: '8', suit: 'Diamonds') }
      let(:test_card3) { PlayingCard.new(rank: 'Q', suit: 'Clubs') }
      let(:test_card4) { PlayingCard.new(rank: 'A', suit: 'Clubs') }
      let(:test_player) { Player.new(deck: [test_card0, test_card1]) }
      let(:test_player2) { Player.new(deck: [test_card2, test_card3]) }
      let(:test_player3) { Player.new(deck: [test_card2, test_card4]) }
      let(:test_game) { War.new(player1: test_player, player2: test_player2) }
      let(:test_game2) { War.new(player1: test_player, player2: test_player3) }

      it('has both players lay down their top card, which ever player has the higher card gets both cards in play ') do
        test_card0
        test_card1
        test_card2
        test_card3
        test_player
        test_player2
        test_game
        test_game.play_round()
        expect(test_player.hand().length).to eq(3)
      end

      it('in the case of a tie, makes the players lay down another card to break the tie, winner takes all') do
        test_card0
        test_card1
        test_card2
        test_card4
        test_player
        test_player3
        test_game2
        test_game.play_round()
        expect(test_player.hand().length).to eq(4)
      end
    end
  end
end
