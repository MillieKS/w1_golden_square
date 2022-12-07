require 'gratitudes'

RSpec.describe Gratitudes do
    it "initialise gratitudes" do
        message = Gratitudes.new
        expect(message.format).to eq "Be grateful for: "
    end
end

RSpec.describe Gratitudes do
    it "list gratitudes" do
        message = Gratitudes.new
        message.add("life")
        expect(message.format).to eq "Be grateful for: life"
    end
end

RSpec.describe Gratitudes do
    it "list gratitudes" do
        message = Gratitudes.new
        message.add("life")
        message.add("food")
        expect(message.format).to eq "Be grateful for: life, food"
    end
end