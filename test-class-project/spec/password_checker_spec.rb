require 'password_checker'

RSpec.describe PasswordChecker do
    it " returns true if password length is more than 8" do
        password = PasswordChecker.new
        expect(password.check('hellomynameis')).to eq true

    end

    it " returns error if password length is less than 8" do
        password = PasswordChecker.new
        expect{ password.check('hello') }.to raise_error "Invalid password, must be 8+ characters."

    end
end