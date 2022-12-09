require 'grammer'

RSpec.describe "checking grammer to determine it's a sentence" do

    it "return true if passed both first capital and end punctuation" do
      result = grammer_checker("Hello?")
      expect(result).to eq true
    end

    it "return true if passed both first capital and end punctuation" do
      result = grammer_checker("Hello.")
      expect(result).to eq true
    end

    it "return true if passed both first capital and end punctuation" do
        result = grammer_checker("Hello!")
        expect(result).to eq true
      end

      it "return true if passed both first capital and end punctuation" do
        result = grammer_checker("Hello-")
        expect(result).to eq false
      end
end