module Battleship
	class Cell
		attr_accessor :value
		def initialize(value = " ")
			@value = value
		end
	end


	class ShipCell

		attr_accessor :status, :content
		attr_reader :coordinates

		def initialize(coordinates)
			@status = nil
			@content ||= 'water'
			@coordinates = coordinates
		end

		def accept ship
			@content = ship
			ship.place!		
		end


		def hit_it!
			if @content == 'water'
				@status = 'miss' 
			else
				@status = 'hit'
				content.hit!
				return content.sunk?
			end
			return false
		end
	end

  class Ship

	attr_accessor :hit_count
	attr_reader :length, :name

	def initialize(length,name)
	@length		= length
	@name     	= name
	@hit_count	= 0
	@placed		= false
	end

	def self.battleship
		new(1, "battleship")
	end

	def self.submarine
		new(1, "submarine")
	end

	def hit!
		@hit_count += 1
	end

	def placed?
		@placed
	end

	def place!
		@placed = true
	end

	def sunk?
		return true if hit_count == length
		return false
	end
  end
end