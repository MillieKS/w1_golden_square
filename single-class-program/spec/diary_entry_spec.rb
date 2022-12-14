require 'diary_entry'

RSpec.describe DiaryEntry do
    it "initializez" do
        entry = DiaryEntry.new("title", "contents")
        expect(entry.title).to eq "title"
        expect(entry.contents).to eq "contents"
    end

    it "count words of the contents" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.count_words).to eq 10
    end

    it "count words of the contents" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.count_words).to eq 10
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.reading_time(2)).to eq 5
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.reading_time(3)).to eq 4
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.reading_time(4)).to eq 3
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.reading_chunk(4, 2)).to eq "contents contents contents contents contents contents contents contents"
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "contents " * 10)
        expect(entry.reading_chunk(5, 2)).to eq "contents contents contents contents contents contents contents contents contents contents"
    end

    it "calculate reading time given the wpm" do
        entry = DiaryEntry.new("title", "I have a dog and a cat.")
        entry.reading_chunk(1, 2)
        chunk = entry.reading_chunk(1, 2)
        expect(chunk).to eq "a dog"
    end

    
end 