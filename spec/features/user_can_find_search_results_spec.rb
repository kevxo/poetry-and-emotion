require 'rails_helper'

describe 'As a user' do
  describe 'When I visit / and I click Get Poems ' do
    it 'should be on /search page and see a list of the first 10 poems with tones of each' do
      visit '/'

      within '.search-containter' do
        fill_in :author, with: 'Emily'
        click_on 'Get Poems'
      end

      expect(current_path).to eq('/search')

      within(first('.author')) do
        expect(page).to have_css('.title')
        expect(page).to have_css('.name')
        expect(page).to have_css('.poem')
      end
    end
  end
end