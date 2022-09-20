class Vendor
  attr_reader :vendor_name, :inventory

  def initialize(vendor_name)
    @vendor_name = vendor_name
    @inventory = []
  end

  def check_stock(item)
    item.amount
  end

  def stock(item, amount)
    @item = Item.new({name: @name, price: @price, amount: @amount})
    @inventory << item
    item
  end
end
