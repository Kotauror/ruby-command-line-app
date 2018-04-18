require 'user'

describe User do

subject(:user) { described_class.new("Jusia") }

  describe '#initialize' do
    it 'has a name' do
      expect(user.name).to eq("Jusia")
    end
    it 'has an empty basket' do
      expect(user.basket).to eq([])
    end
  end

end
