require('rspec')
require('playing_card')

describe('Card') do
  before() do
    Card.clear()
  end

  describe('.rank') do
    it('returns the rank of a face card') do
      test_card = Card.new('A','H')
      expect(test_card.rank()).to(eq('A'))
    end
end
