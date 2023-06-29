class Match
  attr_accessor :players


  def initialize(**attributes)
    @players = attributes.values
  end

  def state
    'match_starting_soon'
  end

end