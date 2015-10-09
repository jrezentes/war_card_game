require('rspec')
require('war')
require('player')

describe('War') do
  describe('#win') do
    it('gives both cards played by both players to the winner of the hand') do
      test_player = Player.new(["6 Spades", "J Hearts"])
      test_player2 = Player.new(["10 Clubs", "A Diamonds"])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player2.cards()).to(eq(["10 Clubs", "A Diamonds", "J Hearts"]))
    end
  end

end
