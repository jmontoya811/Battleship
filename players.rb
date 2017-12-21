module Battleship
	class Player
		attr_reader :color, :name, :status

		def initialize(input)
			@color = input.fetch(:color)
			@name = input.fetch(:name)
		end
	end
end
