require 'gratitudes'

RSpec.describe Gratitudes do
    context "given an empty string" do
        it "returns nothing" do
            gratitudes = Gratitudes.new
            gratitudes.add("")
            expect(gratitudes.format).to eq "Be grateful for: " + ""
        end
    end
    context "given a string" do
        it "returns our string to the end" do
            gratitudes = Gratitudes.new
            gratitudes.add("being a maker!")
            expect(gratitudes.format).to eq "Be grateful for: " + "being a maker!"
        end
    end
    context "given multiple strings" do 
        it "returns multiple strings to our array" do
            gratitudes = Gratitudes.new
            gratitudes.add("being a maker!")
            gratitudes.add("owning a house!")
            gratitudes.add("having a dog!")
            expect(gratitudes.format).to eq "Be grateful for: " + "being a maker!, owning a house!, having a dog!"
        end
    end
end