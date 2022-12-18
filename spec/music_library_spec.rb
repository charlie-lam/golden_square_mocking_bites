require 'music_library'

RSpec.describe MusicLibrary do
    context "Add and All" do
        it "Adds two tracks and returns them" do
            music_library = MusicLibrary.new
            fake_track_1 = double :track
            fake_track_2 = double :track
            music_library.add(fake_track_1)
            music_library.add(fake_track_2)
            expect(music_library.all).to eq [fake_track_1, fake_track_2]
        end
    end

    context "Add and search" do
        it "Adds two tracks and returns list with just keyword track" do
            music_library = MusicLibrary.new
            fake_track_1 = double :track , matches?: true
            fake_track_2 = double :track , matches?: false
            music_library.add(fake_track_1)
            music_library.add(fake_track_2)
            expect(music_library.search("keyword")).to eq [fake_track_1]
        end
    end
end