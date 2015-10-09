require('rspec')
require('war')
require('player')

describe('War') do
  describe('#play_hand') do
    it('Gives proper result when player 2 winss') do
      test_card0 = PlayingCard.new('J','Spades')
      test_card1 = PlayingCard.new('2','Spades')
      test_card2 = PlayingCard.new('8','Spades')
      test_card3 = PlayingCard.new('A','Spades')
      test_player = Player.new([test_card0, test_card1])
      test_player2 = Player.new([test_card2, test_card3])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player2.cards()).to(eq([test_card2, test_card1, test_card3]))
    end

    it('Gives proper result when player 1 winss') do
      test_card0 = PlayingCard.new('J','Spades')
      test_card1 = PlayingCard.new('A','Spades')
      test_card2 = PlayingCard.new('8','Spades')
      test_card3 = PlayingCard.new('Q','Spades')
      test_player = Player.new([test_card0, test_card1])
      test_player2 = Player.new([test_card2, test_card3])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player.cards()).to(eq([test_card0, test_card1, test_card3]))
    end

    it('Does not break when there is a tie') do
      test_card0 = PlayingCard.new('J','Spades')
      test_card1 = PlayingCard.new('A','Spades')
      test_card2 = PlayingCard.new('8','Spades')
      test_card3 = PlayingCard.new('Q','Spades')
      test_player = Player.new([test_card0, test_card1])
      test_player2 = Player.new([test_card2, test_card3])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player.cards()).to(eq([test_card0, test_card1, test_card3]))
    end
  end

end
