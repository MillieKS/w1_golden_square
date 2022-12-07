require 'string_builder'

# We use the class name here rather than a string
RSpec.describe StringBuilder do
    it "should return an empty string" do
      new_string = StringBuilder.new
      # result = reminder.remind()
      expect(new_string.output).to eq ""
      expect(new_string.size).to eq 0
    end
  
    # We would typically have a number of these examples.
  end
  
RSpec.describe StringBuilder do
  it "builds a string" do
    new_string = StringBuilder.new
    new_string.add("hello")

    # result = reminder.remind()
    expect(new_string.output).to eq "hello"
  end

  # We would typically have a number of these examples.
end

# We use the class name here rather than a string
RSpec.describe StringBuilder do
    it "builds a string" do
      new_string = StringBuilder.new
      new_string.add("hello")
  
      # result = reminder.remind()
      expect(new_string.size).to eq 5
    end
  
    # We would typically have a number of these examples.
  end

  RSpec.describe StringBuilder do
    it "builds a string" do
      new_string = StringBuilder.new
      new_string.add("hello")
      new_string.add("Mimi")
  
      # result = reminder.remind()
      expect(new_string.output).to eq "helloMimi"
    end
  
    # We would typically have a number of these examples.
  end