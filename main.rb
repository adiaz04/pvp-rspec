class Match
  attr_accessor :players

  def initialize(**attributes)
    @players = attributes.values
  end

end