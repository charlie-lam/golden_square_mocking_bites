require 'diary'
require 'secret_diary'

RSpec.describe "Secret diary integration" do
    context "Initialize and read diary" do
        it "Fail - Adds diary to container but it's locked" do
            diary = Diary.new("Entry")
            secret_diary = SecretDiary.new(diary)
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end

    context "Initialize, unlock and read" do
        it "Adds diary to container then retuns the contents" do
            diary = Diary.new("Entry")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "Entry"
        end
    end

    context "Unlock,lock then read" do
        it "Fails - locked again" do
            diary = Diary.new("Entry")
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect{secret_diary.read}.to raise_error "Go away!"
        end
    end
end