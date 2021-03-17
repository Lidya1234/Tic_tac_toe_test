class Validator
  def initialize(lidu)
    @player = lidu
  end

  def validname(player)
    return false if player.nil? || player == ''

    true
  end

  def validplayer(player1, player2)
    return false if player1 == player2

    true
  end
end
