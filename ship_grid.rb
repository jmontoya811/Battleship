require_relative 'ship_cell.rb'
require_relative 'agrid.rb'

module Battleship
	class Board < Grid
		def initialize(input, buildGrid)
			@grid = Grid.new
		end
	

# module Battleship
# 	class Board
		attr_reader :grid, :buildGrid
		def initialize(input = {})
			@grid = input.fetch(:grid, :buildGrid)
		end

		def get_ship(x, y)
			fixLine(x)
		end

		# def set_ship(x, y, svalue)
		#   get_ship(x, y).rowMark = @input
		# end


		def set_ship(x, y, svalue)
		  rowMark(x, y)
		  return modGrid
		end

		def get_cell(x, y)
  			fixLine(x)
		end

		def set_cell(x, y, input)
		  rowMark(x, y)
		  return modGrid
		end

		# def ship_hit
		# 	return :hit if set_cell == set_ship
		# 	return :miss if set_cell == element.to_s.empty?
		# end
		def hit_or_miss
			return :win if value = svalue
			return :miss if value = none_empty
		end


		def game_over
			return :winner if winner?
			return :draw if draw?
			false
		end
	
		# def all_same?
		# 	self.all? { |element| element == self[0] }
		# end

		# def any_empty?
		# 	self.any? { |element| element.to_s.empty? }
		# end

		# def none_empty?
		#   !any_empty?
		# end

		# def draw?
		# 	grid.flatten.map { |cell| cell.value }.none_empty?
		# end

		# def winner
		#   current_player.input == other_player.cell
		#   other_player.input == current_player.cell
		# end
	

		private

		def default_grid
			Array.new(3) { Array.new(3) { Cell.new }}
		end

		def placed_ship
			@current_player.input
		end
	end
end