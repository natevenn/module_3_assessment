require 'rails_helper'

RSpec.feature 'user searches for product' do
  scenario 'user visit home page and searches product' do

      visit '/'
      fill_in 'search', with: 'sennheiser'
      click_on 'Search'

      expect(current_path).to eq '/search'
      expect(page).to have_content "Your search resulted in 15 items for Sennheiser"
    end
  end
