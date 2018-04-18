require 'product'

describe Product do

subject(:product) { described_class.new("kitikat", 5, 510) }

  describe '#initialize' do
    it 'has a name' do
      expect(product.name).to eq("kitikat")
    end
    it 'has a price' do
      expect(product.price).to eq(5)
    end
    it 'has a barcode' do
      expect(product.barcode).to eq(510)
    end
  end

end
