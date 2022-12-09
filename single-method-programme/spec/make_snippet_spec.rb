require 'make_snippet'

RSpec.describe 'make_snippet' do
    it "returns text withing 5 words" do
        result = make_snippet("hi my name is")
        expect(result).to eq "hi my name is"
    end

    it "returns the first 5 words only" do
        result = make_snippet("hi my name is harry and Sally")
        expect(result).to include "hi my name is harry"
    end

    it "returns the first 5 words and ..." do
        result = make_snippet("hi my name is harry and Sally")
        expect(result).to eq "hi my name is harry..."
    end
end