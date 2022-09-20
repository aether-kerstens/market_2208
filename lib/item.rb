
class Item

  attr_reader :name, :price, :amount

  def initialize(item_data)
    @name = item_data[:name]
    @price = item_data[:price]
    @amount = item_data[:amount]
  end
end
