require 'spec_helper.rb'

RSpec.describe Vendor do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end
  describe '#initialize' do
    it 'can create an vendor' do
      expect(@item2.name).to eq('Tomato')
      expect(@vendor).to be_an_instance_of(Vendor)
    end
    it 'can have a name' do
      expect(@vendor.vendor_name).to eq("Rocky Mountain Fresh")
    end
    it 'can have an inventory' do
      expect(@vendor.inventory).to eq([])
    end
  end
  describe '#stock' do
    it 'can add an amount of an item' do
      item1 = @vendor.stock('Peach', "$0.75")
    end
  end
end
