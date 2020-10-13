#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
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

puts 'Enter name of first player'
player1name = getplayesrs
sign1 = 'x'

player1 = Player.new(player1name, sign1)
puts "#{player1name}'s symbol #{sign1}"
puts 'Enter name of second player'
player2name = getplayesrs
if player2name == player1name
  puts 'Already taken:Enter a different name'
  player2name = getplayesrs
end
sign2 = 'y'
player2 = Player.new(player2name, sign2)
puts "#{player2name}'s symbol #{sign2}"

startgame = Game.new(player1, player2)
startgame.game_board
startgame.playgame
