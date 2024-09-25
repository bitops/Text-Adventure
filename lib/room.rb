class Room
	attr_accessor :description, :rooms, :items, :info, :handle
	attr_writer :starting_location

  def initialize
		@inventory = Inventory.new
	end

	def has_room_to_the?(direction)
		rooms.key?(direction)
	end

	def starting_location?
		@starting_location
	end

  def user_picks_up(item)
    @inventory.remove item
  end
end
