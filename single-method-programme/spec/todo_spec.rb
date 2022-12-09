require 'todo'

RSpec.describe "todo checker" do
  it "if passed string not containing todo return false" do
  result = todo_checker("string")
  expect(result).to eq false
end

  it "if passed string containing todo at end return true" do
    result = todo_checker("Go gym. #TODO")
    expect(result).to eq true
  end

  it "if passed string containing todo at end return true" do
    result = todo_checker("Go #TODO gym.")
    expect(result).to eq true
  end

end 