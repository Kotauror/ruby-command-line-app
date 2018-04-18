require 'shop'

describe Shop do

  subject(:shop) { described_class.new }

  describe '#initialize' do
    it 'is initialized with an instance of Interface' do
      expect(shop.interface).to be_a_kind_of(Interface)
    end
    it 'is initialized with an instance of Inventory' do
      expect(shop.inventory).to be_a_kind_of(Inventory)
    end
  end

end
