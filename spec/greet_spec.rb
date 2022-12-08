require 'greet'

RSpec.describe "greet method" do
    it "returns the name given in a string" do
        result = greet("Ryan")
        expect(result).to eq "Hello Ryan!"
    end
end
