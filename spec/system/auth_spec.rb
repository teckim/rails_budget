require 'rails_helper'

RSpec.describe 'Authentication', type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'Sign in' do
    it 'Should sign in correctly' do
      visit new_user_session_path

      within('#new_user') do
        find('#user_email').fill_in with: User.first.email
        find('#user_password').fill_in with: '123456789'
      end

      find('button[type="submit"]').click
      expect(page).to have_current_path(groups_path)
    end
  end

  describe 'Sign up' do
    it 'Should sign up correctly' do
      visit new_user_registration_path

      within('#new_user') do
        find('#user_name').fill_in with: 'John Doe'
        find('#user_email').fill_in with: 'jogn.doe@example.com'
        find('#user_password').fill_in with: '123456789'
        find('#user_password_confirmation').fill_in with: '123456789'
      end

      find('button[type="submit"]').click
      expect(page).to have_current_path(root_path)
    end
  end
end
