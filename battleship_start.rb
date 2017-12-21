require_relative "battleship_game.rb"

puts "Welcome to battleship"

navy = Battleship::Player.new({color: "x", name: "navy", status: "false"})
ko_navy = Battleship::Player.new({color: "o", name: "korean navy", status: "false"})
players = [navy, ko_navy]
Battleship::Game.new(players).start_game

