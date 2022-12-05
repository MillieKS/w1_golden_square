require 'greet'

RSpec.describe "greeting" do
    it "says hello with name input" do
      name = 'Josh'
      expect(greet(name)).to eq 'Hello, Josh!'
    end
  end