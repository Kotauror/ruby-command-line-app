require 'interface'

describe Interface do

  subject(:interface) { described_class.new }

  describe "#hello" do
    it "prints the options to the console" do
      expect{interface.hello}.to output(
        "\"Hello and welcome to the Shop." +
        "Below you can find a list of products available to buy.\"\n"
      ).to_stdout
    end
  end
end
