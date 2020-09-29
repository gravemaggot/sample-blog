# frozen_string_literal: true

require 'spec_helper'

feature 'Contact Creation' do
  scenario 'allows acess to create account' do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
