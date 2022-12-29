require 'string_repeater'

RSpec.describe StringRepeater do
    it "returns a repeated string from inputs" do
        ker = double(:kernel)
        expect(ker).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(ker).to receive(:puts).with("Please enter a string").ordered
        expect(ker).to receive(:gets).and_return("TWIX").ordered
        expect(ker).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(ker).to receive(:gets).and_return(10).ordered
        expect(ker).to receive(:puts).with("Here is your result:").ordered
        expect(ker).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered

        string_repeater = StringRepeater.new(ker)
        string_repeater.run
    end
end