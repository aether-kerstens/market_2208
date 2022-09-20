require 'spec_helper'

RSpec.describe Market do
  it 'exists' do
    @market = Market.new("South Pearl Street Farmers Market")

    expect(@market).to be_an_instance_of(Market)
    expect(@market.name).to eq("South Pearl Street Farmers Market")
  end

  it 'starts with an empty array of vendors' do
    @market = Market.new("South Pearl Street Farmers Market")

    expect(@market.vendors).to eq([])
  end

  describe 'instance methods' do
    before(:each) do
      @market = Market.new("South Pearl Street Farmers Market")

      @vendor1 = Vendor.new("Rocky Mountain Fresh")
      @vendor2 = Vendor.new("Ba-Nom-a-Nom")
      @vendor3 = Vendor.new("Palisade Peach Shack")

      @item1 = Item.new({name: 'Peach', price: "$0.75"})
      @item2 = Item.new({name: 'Tomato', price: "$0.50"})
      @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
      @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})

      @vendor1.stock(@item1, 35)
      @vendor1.stock(@item2, 7)
      @vendor2.stock(@item4, 50)
      @vendor2.stock(@item3, 25)
      @vendor3.stock(@item1, 65)
    end

    it 'can list vendor names' do
      @market.add_vendor(@vendor1)
      @market.add_vendor(@vendor2)
      @market.add_vendor(@vendor3)

      expect(@market.vendors).to eq([@vendor1, @vendor2, @vendor3])
      expect(@market.vendor_names).to eq([@vendor1.name, @vendor2.name, @vendor3.name])
    end

    it 'can list vendors that sell a particular item' do
      @market.add_vendor(@vendor1)
      @market.add_vendor(@vendor2)
      @market.add_vendor(@vendor3)

      expect(@market.vendors_that_sell(@item1)).to eq([@vendor1, @vendor3])
      expect(@market.vendors_that_sell(@item2)).to eq([@vendor1])
    end
  end
end