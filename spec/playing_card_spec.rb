require('rspec')
require('playing_card')

describe('Card') do
  describe('#rank') do
    it('returns the rank of a face card') do
      test_card = PlayingCard.new({:rank => 'A', :suit => 'H'})
      expect(test_card.rank()).to(eq(14))
    end
    it('returns the rank of a non-face card') do
      test_card = PlayingCard.new({:rank => '2', :suit => 'H'})
      expect(test_card.rank()).to(eq(2))
    end
  end

  describe('#suit') do
    it('returns the suit of a card ') do
      test_card = PlayingCard.new({:rank => 'A', :suit => 'H'})
      expect(test_card.suit()).to(eq('H'))
    end
  end
end
