require 'counter'

# We use the class name here rather than a string

RSpec.describe Counter do
    it "counts up to the input count 0" do
      count = Counter.new
      # result = reminder.remind()
      expect(count.report).to eq "Counted to 0 so far."
    end
  
    # We would typically have a number of these examples.
  end

RSpec.describe Counter do
  it "counts up one input count" do
    count = Counter.new
    count.add(7)
    
    # result = reminder.remind()
    expect(count.report).to eq "Counted to 7 so far."
  end

  # We would typically have a number of these examples.
end

RSpec.describe Counter do
    it "counts up 2 input count" do
      count = Counter.new
      count.add(7)
      count.add(7)
      
      # result = reminder.remind()
      expect(count.report).to eq "Counted to 14 so far."
    end
  
    # We would typically have a number of these examples.
  end