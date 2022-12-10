require 'problem_one'

RSpec.describe "reading_time method" do
    context "given an empty string" do
        it "returns 0" do
            result = reading_time("")
            expect(result).to eq 0
        end
    end
    context "given a text of less than 200 words" do
        it "returns 1" do
            result = reading_time("one two")
            expect(result).to eq 1
        end
    end
    context "given a text of 200 words" do
        it "returns 1" do
            result = reading_time("one " * 200)
            expect(result).to eq 1
        end
    end
    context "given a text of 300 words" do
        it "returns 2" do
            result = reading_time("one " * 300)
            expect(result).to eq 2
        end
    end
    context "given a text of 400 words" do
        it "returns 2" do
            result = reading_time("one " * 400)
            expect(result).to eq 2
        end
    end
    context "given a text of 5000 words" do
        it "returns 25" do
            result = reading_time("one " * 5000)
            expect(result).to eq 25
        end
    end
end