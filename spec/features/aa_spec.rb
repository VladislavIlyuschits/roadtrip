#frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Categories Results', type: :feature, js: true do

  # scenario 'User sees page with choose flights', js: true do
  #   click_search
  #   expect(page).to have_text 'Choose flights'
  # end

  scenario "User sees 'sorry' page", js: true do
    click_search
    expect(page).to have_text "We're working on our site\nPlease start over by returning to the Home Page. AA Home Page\nThank you for your patience."
  end

  def click_search
    visit 'https://www.aa.com/'
    fill_in('originAirport', with: 'NYC')
    fill_in('destinationAirport', with: 'LAS')
    fill_in('returnDate', with: '10/02/2019')
    click_button 'Search'
  end
end


