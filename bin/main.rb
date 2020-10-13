#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'


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
