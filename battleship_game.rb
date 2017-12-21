 require_relative 'players.rb'
 require_relative 'ship_cell.rb'
 require_relative 'ship_grid.rb'
 require_relative 'agrid.rb'

module Battleship
	class Game
		attr_reader :players, :board, :current_player, :other_player, :set_ship, :set_cell
		def initialize(players, board = Board.new)
			@players = players
			@board = board
			@current_player, @other_player = players.shuffle
			@@svalue = @input
			@set_ship = set_ship
			@set_cell = set_cell
			
		end
	
		def start_game
			puts "#{current_player.name} is first to set ships"
			# while true
			2.times do
				puts set_ships
				x, y = get_ships
				board.set_ship(x, y, @@svalue)
				puts "Your Battleship has been set"
				switch_players
				end
			    # if "#{current_player.status} = #{other_player.status}"
			   return play_game
			   #  	if "#{current_player.status} = #{other_player.status}"
				  # then switch_players
				
				
			end 
		
		


			def set_ships
				puts "#{@current_player.name}: Enter your ships hiding coordinates"
					gets = @input
			end

			def get_ships(human_input = gets.chomp)
				set_at_coordinates(human_input)
			end
	

    def play_game 
		puts "#{current_player.name} is first to strike"
		while true
			puts battleship_attack

			x, y = get_move
			board.set_cell(x, y, @input)
			if set_cell == set_ship
				puts "You have hit a battleship"
				switch_players
			else
				puts "You have missed"
					return	switch_players
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

def toggle_status
	@current_player.status = "true"
end


def battleship_attack
	"#{current_player.name}: Enter your attack coordinates"
	@input = gets.chomp 
end

def get_move(human_attack = gets.chomp)
	 move_to_coordinates(human_attack)
end

def game_over_sunk
	return "#{current_player.name} Sunk your ship!" if get_move = other_player.svalue
end

	
	


private

	# def move_to_coordinates(human_attack)
	# 	mapping = {
	# 	"1" => [0, 0],
	# 	"2" => [1, 0],
	# 	"3" => [2, 0],
	# 	"4" => [0, 1],
	# 	"5" => [1, 1],
	# 	"6" => [2, 1],
	# 	"7" => [0, 2],
	# 	"8" => [1, 2],
	# 	"9" => [2, 2]
	# 	}
	# 	mapping[human_attack]
	# end

	# def set_at_coordinates(human_input)
	# 	mapping = {
	# 	"1" => [0, 0],
	# 	"2" => [1, 0],
	# 	"3" => [2, 0],
	# 	"4" => [0, 1],
	# 	"5" => [1, 1],
	# 	"6" => [2, 1],
	# 	"7" => [0, 2],
	# 	"8" => [1, 2],
	# 	"9" => [2, 2]
	# 	}
	# 	mapping[human_input]
	# end
 #  end
	# end
	def move_to_coordinates(human_attack)
		mapping = {
			"A, 1" => ["A", 1],
			"B, 1" => ["B", 1],
			"C, 1" => ["C", 1],
			"D, 1" => ["D", 1],
			"E, 1" => ["E", 1],

			"A, 2" => ["A", 2],
			"B, 2" => ["B", 2],
			"C, 2" => ["C", 2],
			"D, 2" => ["D", 2],
			"E, 2" => ["E", 2],

			"A, 3" => ["A", 3],
			"A, 4" => ["A", 4],
			"A, 5" => ["A", 5],

			"B, 3" => ["B", 3],
			"B, 4" => ["B", 4],
			"B, 5" => ["B", 5],

			"C, 3" => ["C", 3],
			"C, 4" => ["C", 4],
			"C, 5" => ["C", 5],

			"D, 3" => ["D", 3],
			"D, 4" => ["D", 4],
			"D, 5" => ["D", 5],

			"E, 3" => ["E", 3],
			"E, 4" => ["E", 4],
			"E, 5" => ["E", 5]
			}
		mapping[human_attack]
	end

	def set_at_coordinates(human_input)
	mapping = {
		"A, 1" => ["A", 1],
		"B, 1" => ["B", 1],
		"C, 1" => ["C", 1],
		"D, 1" => ["D", 1],
		"E, 1" => ["E", 1],

		"A, 2" => ["A", 2],
		"B, 2" => ["B", 2],
		"C, 2" => ["C", 2],
		"D, 2" => ["D", 2],
		"E, 2" => ["E", 2],

		"A, 3" => ["A", 3],
		"A, 4" => ["A", 4],
		"A, 5" => ["A", 5],

		"B, 3" => ["B", 3],
		"B, 4" => ["B", 4],
		"B, 5" => ["B", 5],

		"C, 3" => ["C", 3],
		"C, 4" => ["C", 4],
		"C, 5" => ["C", 5],

		"D, 3" => ["D", 3],
		"D, 4" => ["D", 4],
		"D, 5" => ["D", 5],

		"E, 3" => ["E", 3],
		"E, 4" => ["E", 4],
		"E, 5" => ["E", 5]

		}
		mapping[human_input]
	end
  end
end

