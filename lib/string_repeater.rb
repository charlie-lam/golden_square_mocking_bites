class StringRepeater
    def initialize(io)
        @io = io
    end

    def run
        @io.puts "Hello. I will repeat a string many times."
        @io.puts "Please enter a string"
        str = @io.gets
        @io.puts "Please enter a number of repeats"
        num = @io.gets
        @io.puts "Here is your result:"
        @io.puts "#{str * num}"
    end
end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX