class Item
  attr_accessor :handle, :name, :description

  def initialize(handle, name, description)
    @handle = handle
    @name = name
    @description = description
  end
end
