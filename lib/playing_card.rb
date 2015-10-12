class PlayingCard

  attr_reader :suit, :rank

  def initialize(suit:, rank:)
    @rank = rank
    @suit = suit
  end

  def rank

    face_to_number = {
      'J' => 11,
      'Q' => 12,
      'K' => 13,
      'A' => 14
    }

    if @rank == 'A' || @rank == 'K' || @rank == 'Q' || @rank == 'J'
      return face_to_number[@rank]
    else
      @rank.to_i()
    end
  end

  def ==(card)
    return card.rank() == rank() && card.suit() == suit()
  end
end
