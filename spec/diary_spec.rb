require 'diary'

RSpec.describe Diary do
    context "Diary initialize and read" do
        it "Adds contents that can be read" do
            diary = Diary.new("First entry")
            expect(diary.read).to eq "First entry"
        end

        it "Fails initialize" do
            expect{diary = Diary.new("")}.to raise_error "Please make entry at least one word"
        end
    end
end