# frozen_string_literal: true

require 'spec_helper'

feature 'Contact Creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows acess to create account' do
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
