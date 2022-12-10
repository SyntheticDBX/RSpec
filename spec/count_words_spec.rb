require 'count_words'

RSpec.describe "define count_words method" do
    context "returns a string" do
        it "returns a 0 if string empty" do
            result = count_words("")
            expect(result).to eq 0
        end
        it "counts words in string" do
            result = count_words("there are seven words in this string")
            expect(result).to eq 7
        end
    end
    context "fails" do
        it "fails if strings are not entered" do
            expect { count_words(true) }.to raise_error "Only enter in words"
        end
    end
end