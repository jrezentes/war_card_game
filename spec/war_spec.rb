require('rspec')
require('war')
require('player')
require('playing_card')
require('card_deck')

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

    it('When there is a tie, plays another hand and then declares a winnier once there is no longer a tie(Player 1 wins)') do
      test_card0 = PlayingCard.new('J','Spades')
      test_card1 = PlayingCard.new('A','Hearts')
      test_card2 = PlayingCard.new('8','Diamonds')
      test_card3 = PlayingCard.new('A','Clubs')
      test_player = Player.new([test_card0, test_card1])
      test_player2 = Player.new([test_card2, test_card3])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player.cards()).to(eq([test_card0, test_card2, test_card1, test_card3]))
    end

    it('When there is a tie, plays another hand and then declares a winnier once there is no longer a tie(Player 1 wins)') do
      test_card0 = PlayingCard.new('8','Spades')
      test_card1 = PlayingCard.new('A','Hearts')
      test_card2 = PlayingCard.new('J','Diamonds')
      test_card3 = PlayingCard.new('A','Clubs')
      test_player = Player.new([test_card0, test_card1])
      test_player2 = Player.new([test_card2, test_card3])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player2.cards()).to(eq([test_card0, test_card2, test_card1, test_card3]))
    end


    it('When there are multiple ties, game keeps going until a player loses from rank(player2 wins))') do
      test_card0 = PlayingCard.new('2','Spades')
      test_card1 = PlayingCard.new('A','Hearts')
      test_card2 = PlayingCard.new('8','Hearts')
      test_card3 = PlayingCard.new('A','Clubs')
      test_card4 = PlayingCard.new('4','Spades')
      test_card5 = PlayingCard.new('A','Hearts')
      test_card6 = PlayingCard.new('8','Diamonds')
      test_card7 = PlayingCard.new('A','Clubs')
      test_player = Player.new([test_card0, test_card1, test_card2 ,test_card3])
      test_player2 = Player.new([test_card4, test_card5, test_card6, test_card7])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_player2.cards()).to(eq([test_card0, test_card4, test_card1, test_card5, test_card2, test_card6, test_card3, test_card7]))
    end

    it('When there are multiple ties, and both players run out of cards the game ends') do
      test_card0 = PlayingCard.new('A','Spades')
      test_card1 = PlayingCard.new('A','Hearts')
      test_player = Player.new([test_card0])
      test_player2 = Player.new([test_card1])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_game.play_hand()).to(eq("Everyone Loses!"))
    end

    it('When there are multiple ties, and both players run out of cards the game ends') do
      test_card0 = PlayingCard.new('A','Spades')
      test_card1 = PlayingCard.new('A','Hearts')
      test_player = Player.new([test_card0])
      test_player2 = Player.new([test_card1])
      test_game = War.new(test_player, test_player2)
      test_game.play_hand()
      expect(test_game.play_hand()).to(eq("Everyone Loses!"))
    end

  end

end
