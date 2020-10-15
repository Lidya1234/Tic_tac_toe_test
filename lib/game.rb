# rubocop:disable Metrics/MethodLength

class Game
  WINNERS_SET = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ].freeze
  attr_accessor :won
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @filledpos_player1 = []
    @filledpos_player2 = []
    @winner = nil
  end
 
  def game_board
    puts "#{@board[0]} | #{@board[1]}| #{@board[2]}"
    puts puts '__|__|__'
    puts "#{@board[3]} | #{@board[4]}| #{@board[5]}"
    puts puts '__|__|__'
    puts "#{@board[6]} | #{@board[7]}| #{@board[8]}"
  end
  
  def fill_board(pos, sign)
    if sign == 'x'
      @filledpos_player1 << pos
    elsif sign == 'y'
      @filledpos_player2 << pos
    end
  end
  def board_array(x)
    return true if @board[x] == ' '
    false
   end
   def winner
    if winplay1

      @player1.player
    elsif winplay2
      @player2.player
    end
  end
  def validchoice(choice)
    return true if choice =~ /^-?[0-9]+$/

    false
  end
  def valid_pos(position)
    return true if @board[position. - 1] == ' '

    false
  end

  def playgame
    turn = 1

    until boardfull
      draw = false
      choice = move(turn)
      if turn.odd?

        movement(choice, @player1.sign, turn)
        @filledpos_player1 << choice
        @winner = @player1

      else

        movement(choice, @player2.sign, turn)
        @filledpos_player2 << choice
        @winner = @player2

      end
      won = winner

      if !won.nil?

        game_board

        puts " winner #{@winner.player} :Congratulations "
        @winner.player
        break
      else
        draw = true
      end

      turn += 1
      game_board
      @winner = nil
      won = nil
    end
    board_draw if draw == true
    nil
  end
private
  def board_draw
    puts 'Game was a draw.'
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  
private
  def boardfull
    if @board.any? { |x| x == ' ' }
      false
    else
      true

    end
  end

  
private
  def move(turn)
    choicevalid = false
    choice = ' '

    player_turn = turn.odd? ? @player1 : @player2
    puts "#{player_turn.player} Enter your choice"
    loop do
      choice = gets.chomp
      choicevalid = validchoice(choice)
      choice = choice.to_i if choicevalid == true
      break if choicevalid == true

      puts "#{player_turn.player} Invalid move"
    end
    choice
  end

 
private
  def filled_board(position, sign)
    @board[position - 1] = sign
  end

private
  def movement(position, sign, turn)
    player_turn = turn.odd? ? @player1 : @player2
    loop do
      system 'cls'
      if valid_pos(position)
        filled_board(position, sign)

        break
      else
        puts "#{player_turn.player} Invalid position"
        position = move(turn)
      end
    end
  end

  
private
  def winplay1
    WINNERS_SET.each { |x| return true if x & @filledpos_player1 == x }
    false
  end
private
  def winplay2
    WINNERS_SET.each { |x| return true if x & @filledpos_player2 == x }
    false
  end

  
end
# rubocop:enable Metrics/MethodLength
