# frozen_string_literal: true

def sign_up
    visit new_user_registration_path
  
    fill_in :user_email, with: 'user@example.com'
    fill_in :user_password, with: '123secure#@'
    fill_in :user_password_confirmation, with: '123secure#@'
  
    click_button 'Sign up'
end
