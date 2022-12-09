# Design

# A method called make_snippet that takes a string as an argument 
# and returns the first five words and then a '...' if there are more than that.

def make_snippet(str)
    if str.split.length > 5 
      snippet = str.split[0...5].join(' ')
      return snippet + "..."
    else
      return str 
    end 
end