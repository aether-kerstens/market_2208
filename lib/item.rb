
class Item

  attr_reader :name, :price, :amount

  def initialize(item_data)
    @name = item_data[:name]
    @price = item_data[:price].delete('$').to_f
    @amount = item_data[:amount]
  end
end
