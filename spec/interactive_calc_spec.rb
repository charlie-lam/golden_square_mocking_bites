require 'interactive_calc'

RSpec.describe InteractiveCalculator do
    it "returns the equation and answer from io operation" do
        ker_dbl = double(:kernel)
        expect(ker_dbl).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
        expect(ker_dbl).to receive(:puts).with("Please enter a number").ordered
        expect(ker_dbl).to receive(:gets).and_return(4).ordered
        expect(ker_dbl).to receive(:puts).with("Please enter another number").ordered
        expect(ker_dbl).to receive(:gets).and_return(3).ordered
        expect(ker_dbl).to receive(:puts).with("Here is your result:").ordered
        expect(ker_dbl).to receive(:puts).with("4 - 3 = 1").ordered
        
        interactive_calcu = InteractiveCalculator.new(ker_dbl)
        interactive_calcu.run
    end
end

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1