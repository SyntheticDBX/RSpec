require 'string_builder'

RSpec.describe StringBuilder do
    it "initially returns an empty string as output" do
        string_builder = StringBuilder.new
        expect(string_builder.output).to eq ""
    end

    it "initially returns a length of zero" do
        string_builder = StringBuilder.new
        expect(string_builder.size).to eq 0
    end

    context "given many additions of a string" do 
        it "outputs that string" do
            string_builder = StringBuilder.new
            string_builder.add("Hello")
            string_builder.add("world")
            string_builder.add("cat")
            expect(string_builder.output).to eq "Helloworldcat"
        end

        it "has a size of that strings length" do
            string_builder = StringBuilder.new
            string_builder.add("Hello")
            string_builder.add("world")
            string_builder.add("cat")
            expect(string_builder.size).to eq 13
        end
    end
end