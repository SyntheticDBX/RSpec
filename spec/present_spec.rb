require 'present'

RSpec.describe Present do
    context "check fails" do
        it "fails if value present" do
            present = Present.new
            present.wrap("Cards")
            expect { present.wrap("Beans") }.to raise_error "A contents has already been wrapped."
            expect(present.unwrap).to eq "Cards"
        end
        it "fails if we unwrap first" do
            present = Present.new
            expect { present.unwrap }.to raise_error "No contents have been wrapped."
        end
    end
    context "wraps and unwraps a value" do
        it "wraps and unwraps" do
            present = Present.new
            present.wrap(6)
            expect(present.unwrap).to eq 6
        end
    end
end
