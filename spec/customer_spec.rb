require 'customer'

describe Customer do

subject(:customer) { described_class.new("Jusia") }

  describe '#initialize' do
    it 'has a name' do
      expect(customer.name).to eq("Jusia")
    end
    it 'has an empty basket' do
      expect(customer.basket).to eq([])
    end
  end

end
