# frozen_string_literal: true

require 'spec_helper'

feature 'Contact Creation' do
  scenario 'allows acess to contacts page' do
    visit '/contacts'

    expect(page).to have_content 'Email'
  end
end
