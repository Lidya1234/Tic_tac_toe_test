class Validator
    def initialize(player, sign)
      @player = player
      @sign = sign
    end
  
    def choice(player)
      puts "#{player.player} Enter your choice"
      nil
    end
  
    def getchoice
      gets.chomp
    end
  
    def position(player)
      puts "#{player.player} Invalid position"
      nil
    end
  
    def move(player)
      puts "#{player.player} Invalid move"
      nil
    end
  
    def won(player)
      puts " winner #{player.player} :Congratulations "
    end
  
    def game_over
      puts 'Game Over'
    end
  
    def draw_board
      puts 'Game was a draw.'
    end
  end
  
  def validname(player)
    return false if player.nil? || player == ''
  
    true
  end
  
  def getplayesrs
    player = ''
  
    loop do
      player = gets.chomp
      break if validname(player) == true
  
      puts 'Invalid name:Please enter a valid Name'
    end
    player
  end
  