require 'check_codeword'

RSpec.describe "checks if codeword is correct" do
    it "returns a wrong message if incorrect password" do
        result = check_codeword("beans")
        expect(result).to eq "WRONG!"
    end
    
    it "returns a correct message if correct password" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it "returns an almost message if password starts with h and ends with e" do
        result = check_codeword("hare")
        expect(result).to eq "Close, but nope."
    end
end