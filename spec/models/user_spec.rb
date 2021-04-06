require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    # before do
      
    # end

    it 'should save a new user to DB when all fields are valid' do
      user = User.create(
        name: "testSpec",
        email: "testspec@test.com",
        password: "testspec123",
        password_confirmation: "testspec123"
      )

      expect(user).to be_valid
    end
  end
end
