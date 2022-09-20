require'./lib/item'

RSpec.describe Item do
  before(:each) do
    @item = Item.new({name: 'Peach', price: "$0.75"})
  end
  describe 'initialize' do
    it 'can create item' do
      expect(@item).to be_an_instance_of(Item)
    end
    it 'can have a name' do
      expect(@item.name).to eq('Peach')
    end
    it 'can have an author' do
      expect(@item.price).to eq('$0.75')
    end
  end
end
