class GrammarStats
    def initialize
      @count_true = 0
      @count_false = 0
      # ...
    end
  
    def check(text) 
      n = text.split
      # n.first[0]
      if n.first[0] == n.first[0].capitalize && ((n.last[-1] == ".") || (n.last[-1] == "?") || (n.last[-1] == "!"))
        # another solution ["?", ".", "!"].include?(text[-1])
        @count_true +=1
        return true 
      else 
        @count_false+=1
        return false
      end
      # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    end
  
    def percentage_good
      total = @count_false + @count_true
      percentage = (@count_true/total.to_f) * 100
      return percentage.floor

      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end