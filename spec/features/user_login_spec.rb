require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  before :each do

    @user = User.create! email: 'TesterDude@test.com', firstname: 'Duder', lastname: 'Dude', password: 'testing123', password_confirmation: 'testing123'

  end

  scenario "They can login" do
    # ACT
    visit '/'
    first('ul.navbar-right').find_link('Login').click
    fill_in 'email', with: 'TesterDude@test.com'
    fill_in 'password', with: 'testing123'
    click_on 'Submit'

    # DEBUG / VERIFY
    # save_screenshot
    expect(page).to have_content 'Hello, Duder'
  end
end
