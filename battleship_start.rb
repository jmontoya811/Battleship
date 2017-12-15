require_relative "battleship_game.rb"

puts "Welcome to battleship"

navy = Battleship::Player.new({color: "x", name: "navy"})
ko_navy = Battleship::Player.new({color: "o", name: "korean navy"})
players = [navy, ko_navy]
Battleship::Game.new(players).start_game

