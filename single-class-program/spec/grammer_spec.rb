require 'grammer'

RSpec.describe GrammarStats do
    it "returns true if has capital and ending puntutation" do
        checked = GrammarStats.new
        result = checked.check("Hello!")
        expect(result).to eq true
    end

    it "returns false if hasn't got a capital and ending puntutation" do
        checked = GrammarStats.new
        result = checked.check("hello my name is")
        expect(result).to eq false
    end
    it "returns false if hasn't got a capital letter" do
        checked = GrammarStats.new
        result = checked.check("ello my name is?")
        expect(result).to eq false
    end

    it "returns false if hasn't got a capital letter" do
        checked = GrammarStats.new
        checked.check("ello my name is?")
        checked.check("Hello!")

        expect(checked.percentage_good).to eq 50
    end

    it "returns false if hasn't got a capital letter" do
        checked = GrammarStats.new
        checked.check("ello my name is?")
        checked.check("Hello!")
        checked.check("Hillo!")

        expect(checked.percentage_good).to eq 66
    end
end