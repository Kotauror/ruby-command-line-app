require 'interface'

describe Interface do

  subject(:interface) { described_class.new }

  describe "#print_menu" do
    it "prints the menu to the console" do
      expect{interface.print_menu}.to output(
        "\"Hello\"\n"
      ).to_stdout
    end
  end
end
