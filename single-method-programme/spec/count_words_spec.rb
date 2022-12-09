require 'count_words'

RSpec.describe 'count words in a string' do
  it 'return 0 when an empty string is passed' do
    result = count_words("")
    expect(result).to eq 0
  end

  it 'return 4 when an 4 word string is passed' do
    result = count_words("Hi my name is.")
    expect(result).to eq 4
  end
end