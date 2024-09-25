class Inventory
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def has_item?(item)
    items.include?(item)
  end

  def add(item)
    items << item
  end

  def remove(item)
    if items.include?(item)
      removed_item = items.delete(item)
      return removed_item
    end
  end
end
