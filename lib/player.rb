class Player
  attr_accessor :player
  attr_reader :sign
  def initialize(player, sign)
    @player = player
    @sign = sign
  end
end
