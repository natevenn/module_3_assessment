require 'rails_helper'

RSpec.feature 'user searches for product' do
  scenario 'user visit home page and searches product' do

      visit '/'
      fill_in 'search', with: 'sennheiser'
      click_on 'Search'


      expect(current_path).to eq '/search'
      expect(page).to have_content "Your search resulted in 15 items"
      expect(page).to have_content 'Name: Sennheiser - Camera-Mount Wireless Microphone System - Black'
    end

  scenario 'user visit home page and searches product with multiple keywords' do

    visit '/'
    fill_in 'search', with: 'sennheiser headphones white'
    click_on 'Search'


    expect(current_path).to eq '/search'
    save_and_open_page
    expect(page).to have_content 'Name: Sennheiser - CX 2.00G Earbud Headphones - White'
  end
end
