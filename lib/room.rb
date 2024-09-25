class Room
	attr_accessor :description, :rooms, :items, :info, :handle
	attr_writer :starting_location

  def initialize(items)
		@inventory = Inventory.new(items)
	end

	def has_room_to_the?(direction)
		rooms.key?(direction)
	end

	def starting_location?
		@starting_location
	end

  def has_item?(item)
    @inventory.has_item? item
  end

  def user_picks_up(item)
    @inventory.remove item
  end
end
