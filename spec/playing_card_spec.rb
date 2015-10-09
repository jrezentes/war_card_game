require('rspec')
require('playing_card')

describe('Card') do
  describe('#rank') do
    it('returns the rank of a face card') do
      test_card = PlayingCard.new('A', 'Hearts')
      expect(test_card.rank()).to(eq(14))
    end
    it('returns the rank of a non-face card') do
      test_card = PlayingCard.new('2', 'Hearts')
      expect(test_card.rank()).to(eq(2))
    end
  end

  describe('#suit') do
    it('returns the suit of a card ') do
      test_card = PlayingCard.new('A', 'Hearts')
      expect(test_card.suit()).to(eq('Hearts'))
    end
  end
end
