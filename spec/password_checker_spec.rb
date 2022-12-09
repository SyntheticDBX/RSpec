require 'password_checker'

RSpec.describe PasswordChecker do
    context "check password validity" do
        it "fails if less than 8 characters" do
            passwordchecker = PasswordChecker.new
            expect { passwordchecker.check("beans") }.to raise_error "Invalid password, must be 8+ characters."
        end
        it "passes" do
            passwordchecker = PasswordChecker.new
            expect(passwordchecker.check("password")).to eq true
        end
    end
end

