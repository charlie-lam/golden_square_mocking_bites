class InteractiveCalculator
    def initialize(io)
        @io = io
    end
    def run
        temp = []
        @io.puts "Hello. I will subtract two numbers."
        @io.puts "Please enter a number"
        first = @io.gets
        temp << first
        @io.puts "Please enter another number"
        second = @io.gets
        temp << second
        @io.puts "Here is your result:"
        temp.sort!
        result = temp.last - temp.first
        @io.puts "#{temp.last} - #{temp.first} = #{result}"
    end
end