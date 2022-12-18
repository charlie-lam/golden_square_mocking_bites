require 'music_library'
require 'track'

RSpec.describe "Music library integration" do
    context "Library add and all" do
        it "Adds one track" do
            music_library = MusicLibrary.new
            track_one = Track.new("title", "artist")
            music_library.add(track_one)
            res = music_library.all
            expect(res).to eq [track_one]
        end
    end
    context "Library add and search" do
        it "Adds two tracks and returns list with just keyword track" do
            music_library = MusicLibrary.new
            track_one = Track.new("title", "artist")
            track_two = Track.new("keyword", "artist")
            music_library.add(track_one)
            music_library.add(track_two)
            expect(music_library.search("keyword")).to eq [track_two]
        end
    end
end