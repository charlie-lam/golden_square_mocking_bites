class Track
    def initialize(title, artist) # title and artist are both strings
        fail "Please enter a string title" if !title.is_a? String 
        fail "Please enter a string title" if title == ""
        fail "Please enter a string artist" if !artist.is_a? String 
        fail "Please enter a string artist" if artist == ""
        @state = {title: title, artist:artist}
    end
  
    def matches?(keyword) # keyword is a string
      # Returns true if the keyword matches either the title or artist
        fail "Please enter a string keyword" if keyword == "" 
        fail "Please enter a string keyword" if !keyword.is_a? String
        @state.values.include?(keyword)
    end
  end