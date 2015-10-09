class PlayingCard

  attr_reader(:suit, :rank)

  @@face_to_number = {
    'J' => 11,
    'Q' => 12,
    'K' => 13,
    'A' => 14
  }

  def initialize(attributes)
    @rank=attributes[:rank]
    @suit=attributes[:suit]
  end

  def clear
    @@card = []
  end

  def rank
    if @rank == 'A' || @rank == 'K' || @rank == 'Q' || @rank == 'J'
      return @@face_to_number[@rank]
    else
      @rank.to_i()
    end
  end
end
