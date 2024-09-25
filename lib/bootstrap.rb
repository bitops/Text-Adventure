class Bootstrap
  def initialize(location_data_file, message_data_file)
    @rooms = loader.load_location_data(location_data_file)
    @messages = loader.load_message_data(message_data_file)
  end

  def starting_location
    @rooms.find {|room| room.starting_location?}
  end

  def avatar
    Avatar.new(starting_location)
  end

  def loader
    @loader ||= GameDataLoader.new
  end

  def controller
    ctl = InputController.new
    ctl.messages = @messages
    ctl.avatar = avatar
    ctl.initialize_message
    ctl
  end

  def splash_message
    @messages["splash"]
  end
end
