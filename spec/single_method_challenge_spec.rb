require 'single_method_challenge'

RSpec.describe 'define method task_tracker' do
    context "returns a string" do
        it "returns no task message" do
            result = task_tracker("")
            expect(result).to eq "Does not include #TODO"
        end
        it "returns a string with #TODO" do
            result = task_tracker("#TODO task")
            expect(result).to eq "#TODO task"
        end
        it "fails" do
            expect { task_tracker(true)}.to raise_error "This is not a string."
        end
    end
end