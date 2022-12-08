require 'report_length'

RSpec.describe "returns message verifying string length" do
    it "return message with string length" do
        result = report_length("This is a string")
        length = result.length
        expect(result).to eq "This string was 16 characters long."
    end
end