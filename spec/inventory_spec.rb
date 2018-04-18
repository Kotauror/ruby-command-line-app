require 'inventory'

describe Inventory do

  subject(:inventory) { described_class.new }
  let(:product) { double('a product', name: "kitikat", price: 5, barcode: 100) }
  let(:product2) { double('a product', name: "psiakpsiak", price: 5, barcode: 200) }

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

  describe '#show_products' do
    it 'adds a product to products array' do
      inventory.add_to_products([product, product2])
      expect{inventory.show_products}.to output(
        "\" name || price || barcode \"\n\"kitikat, 5, 100\"\n\"psiakpsiak, 5, 200\"\n"
      ).to_stdout
    end
  end

  describe '#check_if_available' do
    it 'returns true if all products are available' do
      inventory.add_to_products([product, product2])
      expect(inventory.check_if_available([200, 100])).to eq(true)
    end
    it 'returns false if at least one product is not available' do
      inventory.add_to_products([product, product2])
      expect(inventory.check_if_available([200, 300])).to eq(false)
    end
  end
end
