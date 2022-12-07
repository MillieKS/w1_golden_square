require 'present'

RSpec.describe Present do 
  context 'rwap contents' do
    it "fails" do
      present = Present.new
      present.wrap("I am a word")
      expect { present.wrap("I am a word") }.to raise_error "A contents has already been wrapped."
    end

    it "fails as cannot unwrap if not wrapped" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails as cannot unwrap if not wrapped" do
      present = Present.new
      present.wrap("Hello")
      expect(present.unwrap).to eq "Hello"
    end
  end
end