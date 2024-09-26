class Inventory
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def has_item?(search_term)
    finding = items.select { |i| i.handle == search_term }
    !finding.empty?
  end

  def add(item)
    items << item
  end

  def remove(search_term)
    if has_item?(search_term)
      removed_item = items.delete(search_term)
      return removed_item
    end
  end
end
