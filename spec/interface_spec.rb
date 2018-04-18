require 'interface'

describe Interface do

  subject(:interface) { described_class.new }

  describe "#hello" do
    it "prints the options to the console" do
      allow(interface).to receive(:sleep)
      expect{interface.hello}.to output(
        "\"Hello and welcome to the Shop.\"\n\"Below you can find a list of products available to buy.\"\n\"Each product has a name, price and barcode.\"\n"
      ).to_stdout
    end
  end

  describe "#get_number" do
    it "asks for a number" do
      allow(interface).to receive(:sleep)
      expect{interface.get_number}.to output(
        "\"Type a barcode of a product you're interessted in.\"\n"
      ).to_stdout
    end
  end

  describe "#success" do
    it "informs of a successful transaction and asks for more" do
      allow(interface).to receive(:sleep)
      expect{interface.success}.to output(
        "\"Thank you for shopping! If you want to shop again, type 1.\"\n"
      ).to_stdout
    end
  end

  describe "#seeyou" do
    it "says see you" do
      allow(interface).to receive(:sleep)
      expect{interface.seeyou}.to output(
        "\"See you!\"\n"
      ).to_stdout
    end
  end

end
