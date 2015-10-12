require 'spec_helper'

describe('PlayingCard') do

  describe('#initialize') do
    it('recieves the argument message for  both rank and suit') do
      test_card = PlayingCard.new(rank: , sui)
    end
  end
  describe('#rank') do
    it('returns the rank of a face card') do
      test_card = PlayingCard.new(rank: 'A', suit: 'Hearts')
      expect(test_card.rank()).to(eq(14))
    end
    it('returns the rank of a non-face card') do
      test_card = PlayingCard.new(rank: '2', suit: 'Hearts')
      expect(test_card.rank()).to(eq(2))
    end
  end

  describe('#==') do
    it('compares two cards based on equality not identity(if the rank and suit are equal)') do
      test_card = PlayingCard.new(rank: 'A', suit: 'Hearts')
      test_card2 = PlayingCard.new(rank: 'A', suit: 'Hearts')
      expect(test_card == test_card2).to eq(true)
    end
  end
end
