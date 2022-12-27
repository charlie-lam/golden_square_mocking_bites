class Diary
    def initialize(contents) # contents is a string
      fail "Please make entry at least one word" if contents == ""
      fail "Please make entry at least one word" if !contents.is_a? String
      @state = contents
    end
  
    def read
      # Returns the contents of the diary
      @state
    end
  end