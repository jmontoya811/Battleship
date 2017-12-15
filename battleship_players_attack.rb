
# # @player_2_ships[row, column] = ["C,1", "C,2", "C,3", "C,4"]



# require 'io/console'


# class PlayerPick

# player_1_ships = { "row" => "A", "column" => 1..4 }
# player_2_ships = { "row" => "C", "column" => 1..4 }


# 		def initialize(player_1, player_2)
# 			@player_1 = player_1
# 			@player_2 = player_2
# 		end
# end
# 	# def player_select
# 	# 	puts "Player one press any key"
# 	# 	STDIN.getch
# 	# 	print "            /r "
# 	# 	player_select
# 	# 	p player_1 
#  #    end
# class PlayersTurns
# 	def player_1
# 		puts "Strike at coordinates: " 
# 		  coordinates = gets
# 			gets.chomp = player_input
# 				@player_input.hit_or_miss
# 		if hit 
# 		  puts "Hit!!!"
# 			else miss
# 			  puts "Miss.."
# 			end

#     def player_2
# 		puts "You have received a hit!"
# 		puts "Your opponent missed"

# 		rest 1

# 		puts "Strike at coordinates: '#{row}' + '#{column}'" 

# 			gets.chomp
# 			@player_input.hit_or_miss
# 		if hit
# 			puts "Hit!!!"
# 		  else miss
# 			puts "Miss..."
# 	      end
# 		end


# # class attack_method
# 	def hit_or_miss
# 		if "#{player_input}" == player_2_ships
# 			puts "Hit!!!"
# 		else false
# 			puts "Miss..."
# 		end
# 	end
# end

# player_1.new
# player_2.new
# end


module Battleship
	class Game
		attr_reader :players, :ships, :current_player, :other_player
		def initialize(players, ships)
			@players = players
			@ships = ships 
			@current_player, @other_player = players.shuffle
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

def set_ships
	"#{@current_player.name}: Enter your ships hiding coordinates"
end

def get_ships(human_input = gets.chomp)
	set_at_coordinates(human_input)
end


def battleship_attack
	"#{current_player.name}: Enter your attack coordinates"
end

def get_move(human_move = gets.chomp)
	 move_to_coordinates(human_move)
end

	def play 

		puts "#{current_player.name} is first to strike"
		while true
			ships.grid
			puts ""
			puts battleship_attack

			x, y = get_move

			grid.set_ship(x, y, current_player)

			if get_move == other_player.ships 
				puts "You have hit a battleship"
				ships.grid
				return
			elsif
				puts "You have missed"
			else
				switch_players
			end
		end
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


def move_to_coordinates(human_move)
	mapping = {
		"A, 1" => [A, 1],
		"B, 1" => [B, 1],
		"C, 1" => [C, 1],
		"D, 1" => [D, 1],
		"E, 1" => [E, 1],

		"A, 2" => [A, 2],
		"B, 2" => [B, 2],
		"C, 2" => [C, 2],
		"D, 2" => [D, 2],
		"E, 2" => [E, 2],

		"A, 3" => [A, 3],
		"A, 4" => [A, 4],
		"A, 5" => [A, 5],

		"B, 3" => [B, 3],
		"B, 4" => [B, 4],
		"B, 5" => [B, 5],

		"C, 3" => [C, 3],
		"C, 4" => [C, 4],
		"C, 5" => [C, 5],

		"D, 3" => [D, 3],
		"D, 4" => [D, 4],
		"D, 5" => [D, 5],

		"E, 3" => [E, 3],
		"E, 4" => [E, 4],
		"E, 5" => [E, 5]

		}
	mapping[human_move]
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









