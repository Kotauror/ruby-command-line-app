require 'interface'

describe Interface do

  subject(:interface) { described_class.new }

  describe "#hello" do
    it "prints the options to the console" do
      allow(interface).to receive(:sleep)
      expect{interface.hello}.to output(
        "\"Hello and welcome to the Shop.\"\n\"Below you can find a list of products available to buy.\"\n\"Each product has its number.\"\n"
      ).to_stdout
    end
  end
end
