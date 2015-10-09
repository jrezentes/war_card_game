require('rspec')
require('player')
require('card_deck')

describe('Player') do
  describe('#has_cards?') do
    it('player has cards') do
      test_player = Player.new("6 Spades")
      expect(test_player.has_cards?()).to(eq(true))
    end
  end

  describe('#play_card') do
    it('player plays top card from deck/(last element in array)') do
      test_player = Player.new(["6 Spades", "8 Hearts"])
      expect(test_player.play_card()).to(eq("8 Hearts"))
    end

    it('removes the played card from players deck') do
      test_player = Player.new(["6 Spades", "8 Hearts"])
      test_player.play_card()
      expect(test_player.cards()).to(eq(["6 Spades"]))
    end
  end
end
