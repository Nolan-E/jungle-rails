require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    # before do
      
    # end

    it 'should NOT save a new user to DB while password fields do not match' do
      user = User.create(
        firstname: "test",
        lastname: "test",
        email: "testspec@test.com",
        password: "testspec123",
        password_confirmation: "testspec"
      )

      expect(user).to_not be_valid
    end

    it 'should save a new user to DB when all fields are valid' do
      user = User.create(
        firstname: "test",
        lastname: "test",
        email: "testspec@test.com",
        password: "testspec123",
        password_confirmation: "testspec123"
      )

      expect(user).to be_valid
    end

    it 'should not save a new user to DB when email is NOT unique' do
      user1 = User.create(
        firstname: "test",
        lastname: "test",
        email: "testspec@test.com",
        password: "testspec123",
        password_confirmation: "testspec123"
      )
      user2 = User.create(
        firstname: "testy",
        lastname: "test",
        email: "testSpec@test.com",
        password: "testspec1234",
        password_confirmation: "testspec1234"
      )

      expect(user2).to_not be_valid
    end
  end
end
