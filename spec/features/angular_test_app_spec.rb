require 'rails_helper'

feature 'angular test' do
  let(:email) { 'bob@example.com' }
  let(:password) { 'qweqwe' }

  before do
    User.create!(email: email, password: password, password_confirmation: password)
  end

  scenario 'Our Angular Test App is Working' do
    visit '/angular_test'

    fill_in 'Email', with: email
    fill_in 'Password', with: 'qweqwe'
    click_on 'Log in'

    expect(page).to have_content('Name')

    fill_in 'name', with: 'Bob'
    within 'header h1' do
      expect(page).to have_content('Hello, Bob')
    end
  end
end
