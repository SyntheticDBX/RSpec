require 'make_snippet'

RSpec.describe "make snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end
    context "given a string" do
        it "returns the string" do
            result = make_snippet("ryan ezra lucy nala")
            expect(result).to eq "ryan ezra lucy nala"
        end
        it "returns .... after the first 5 words" do
            result = make_snippet("ryan and lucy had a baby called ezra")
            expect(result).to eq "ryan and lucy had a...."
        end
        
    end
end