module Battleship

	class ShipCell
		attr_accessor :svalue
			def initialize(svalue = "#{current_player.human_input}")
				@svalue = svalue
			end
	end

	class Cell
		attr_accessor :value
		def initialize(value = " ")
			@value = value
		end
	end
end