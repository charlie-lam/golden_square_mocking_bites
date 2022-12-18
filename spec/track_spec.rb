require 'track'

RSpec.describe Track do
    context "Add and Match" do
        it "Adds content and matches if right track" do
            track_one = Track.new("title", "artist")
            res = track_one.matches?("title")
            expect(res).to eq true
        end

        it "fails - title" do
            expect{track_one = Track.new(5, "artist")}.to raise_error "Please enter a string title"
        end

        it "fails - artist" do
            expect{track_one = Track.new("title", ["artist"])}.to raise_error "Please enter a string artist"
        end

        it "returns false when no match is found" do
            track_one = Track.new("title", "artist")
            res = track_one.matches?("titleWrong")
            expect(res).to eq false
        end

        it "fails - keyword" do
            track_one = Track.new("title", "artist")
            expect{track_one.matches?("")}.to raise_error "Please enter a string keyword"
        end
    end
end