require 'inventory'

describe Inventory do

  subject(:inventory) { described_class.new }
  let(:product) { double('a product', name: "kitikat", price: 5) }
  let(:product2) { double('a product', name: "psiakpsiak", price: 5) }

  describe '#initialize' do
    it 'has an empty product list' do
      expect(inventory.products).to eq([])
    end
  end

  describe '#add_to_products' do
    it 'adds a product to products array' do
      inventory.add_to_products([product, product2])
      expect(inventory.products).to eq([product, product2])
    end
  end
end
