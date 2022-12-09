require 'reading_time'

RSpec.describe "calculating reading time" do
    it "return 0 when passing an empty string" do 
        result = calculating_reading_time("")
        expect(result).to eq "0 minutes"
    end

    it "returns 1 when passed 200 words" do
      text = "hello " * 400
      result = calculating_reading_time(text)
      expect(result).to eq "2 minutes"
    end

    it "returns 3 when passed 433" do
      text = "hello " * 433
      result = calculating_reading_time(text)
      expect(result).to eq "3 minutes"
    end
end