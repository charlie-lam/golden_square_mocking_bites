class MusicLibrary
    def initialize
        @state = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
      @state << track
    end
  
    def all
      # Returns a list of track objects
      @state
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
      @state.filter{|item| item.matches?(keyword)}
    end
end