require 'codeword'

RSpec.describe "Returns correct with Horse input" do
  it "horse returns correct" do 
    codeword = "horse"
    expect(check_codeword(codeword)).to eq "Correct! Come in."
  end
end

RSpec.describe "Returns incorrect with duck input" do
  it "duck returns incorrect" do 
    result = check_codeword("duck")
    expect(result).to eq "WRONG!"
  end
end

RSpec.describe "Returns incorrect with first char as h and last char a e input" do
  it "hevsfvse returns incorrect" do 
    result = check_codeword("hevsfvse")
    expect(result).to eq "Close, but nope."
  end
end