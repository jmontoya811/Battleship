require_relative 'ship_cell.rb'

module Battleship
	class Board
		def initialize(input)
			@grid = input.fetch.grid
		end
	

# module Battleship
# 	class Board
		attr_reader :grid
		def initialize(input = {})
			@grid = input.fetch(:grid, default_grid)
		end

		def get_ship(x, y)
			grid[y] [x]
		end

		def set_ship(x, y, svalue)
		  get_ship(x, y).svalue = svalue
		end

		def get_cell(x, y)
  			grid[y][x]
		end

		def set_cell(x, y, value)
		  get_cell(x, y).value = value
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
	end
end