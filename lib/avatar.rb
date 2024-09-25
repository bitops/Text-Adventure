class Avatar

	def location
	  @current_room
	end

	def initialize(starting_location)
		@current_room = starting_location
		@inventory = Inventory.new []
	end

	def can_move?(direction)
		@current_room.has_room_to_the?(direction)
	end

	def move(direction)
		if can_move?(direction)
			new_room = @current_room.rooms[direction]
			@current_room = new_room
			true
		else
			false
		end
	end

  def pick_up(item)
    if @current_room.has_item? item
      picked_up_item = @current_room.user_picks_up item
      add_item_to_inventory picked_up_item
      true
    else
      false
    end
  end

	def add_item_to_inventory(item)
		@inventory.add item
	end

  def list_inventory_message
    items = @inventory.items
    if items.empty?
      "Your inventory is empty."
    else
      message = "You have the following items in your inventory:\n"
      items.each {|item| message += "- #{item}\n"}
      message
    end
  end
end
