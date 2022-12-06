require 'report_length'

RSpec.describe "Return legnth of input" do
    it "return 6 for the word tennis" do 
      result = report_length("tennis")
      expect(result).to eq "This string was 6 characters long."
    end
  end

RSpec.describe "Return legnth of input" do
    it "return 4 for the word team" do 
      result = report_length("team")
      expect(result).to eq "This string was 4 characters long."
    end
  end