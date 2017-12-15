 require_relative 'players.rb'
# require_relative 'ship_cell.rb'
 require_relative 'ship_grid.rb'

module Battleship
	class Game
		attr_reader :players, :board, :current_player, :other_player
		def initialize(players, board = Board.new)
			@players = players
			@board = board
			@current_player, @other_player = players.shuffle
		end
	
		def start_game
			puts "#{current_player.name} is first to set ships"
			while true
				puts set_ships
				x, y = get_ships
				board.set_cell(x, y, current_player.color)
			    if gets.chomp == ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
				 then switch_players
				else play_game
				end
			end
		end


			def set_ships
				puts "#{@current_player.name}: Enter your ships hiding coordinates"
			end

			def get_ships(human_input = gets.chomp)
				set_at_coordinates(human_input)
			end
	

    def play_game 
		puts "#{current_player.name} is first to strike"
		while true
			puts battleship_attack

			x, y = get_move
			board.set_cell(x, y, current_player.color)

			if get_move == other_player.color
				puts "You have hit a battleship"
				ships.board
				return
			elsif
				puts "You have missed"
			else
				switch_players
			end
		end
	end
# module Battleship 
# 	describe Game do 

# 	  let (:User1) { Player.new(name: "Navy")}
# 	  let (:User2) { Player.new(name: "Korean Navy")}

# 	end
# end

def switch_players
	@current_player, @other_player = @other_player, @current_player
end



def battleship_attack
	"#{current_player.name}: Enter your attack coordinates"
end

def get_move(human_move = gets.chomp)
	 move_to_coordinates(human_move)
end

def game_over_sunk
	return "#{current_player.name} Sunk your ship!" if get_move = other_player.svalue
end

	
	


private

	def move_to_coordinates(human_move)
		mapping = {
		"1" => [0, 0],
		"2" => [1, 0],
		"3" => [2, 0],
		"4" => [0, 1],
		"5" => [1, 1],
		"6" => [2, 1],
		"7" => [0, 2],
		"8" => [1, 2],
		"9" => [2, 2]
		}
		mapping[human_move]
	end

	def set_at_coordinates(human_input)
		mapping = {
		"1" => [0, 0],
		"2" => [1, 0],
		"3" => [2, 0],
		"4" => [0, 1],
		"5" => [1, 1],
		"6" => [2, 1],
		"7" => [0, 2],
		"8" => [1, 2],
		"9" => [2, 2]
		}
		mapping[human_input]
	end
  end
end
# def move_to_coordinates(human_move)
# 	mapping = {
# 		"A, 1" => [A, 1],
# 		"B, 1" => [B, 1],
# 		"C, 1" => [C, 1],
# 		"D, 1" => [D, 1],
# 		"E, 1" => [E, 1],

# 		"A, 2" => [A, 2],
# 		"B, 2" => [B, 2],
# 		"C, 2" => [C, 2],
# 		"D, 2" => [D, 2],
# 		"E, 2" => [E, 2],

# 		"A, 3" => [A, 3],
# 		"A, 4" => [A, 4],
# 		"A, 5" => [A, 5],

# 		"B, 3" => [B, 3],
# 		"B, 4" => [B, 4],
# 		"B, 5" => [B, 5],

# 		"C, 3" => [C, 3],
# 		"C, 4" => [C, 4],
# 		"C, 5" => [C, 5],

# 		"D, 3" => [D, 3],
# 		"D, 4" => [D, 4],
# 		"D, 5" => [D, 5],

# 		"E, 3" => [E, 3],
# 		"E, 4" => [E, 4],
# 		"E, 5" => [E, 5]

# 		}
# 	mapping[human_move]
# end
