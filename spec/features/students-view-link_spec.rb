require 'rails_helper'

feature 'Student show_links_path' do
  context 'starting from dashboard' do
    before do
      visit '/'
    end

    it 'has link_to curated links' do
      expect(page.body).to have_content('Helpful Links')
    end
    it 'goes to curated links path' do
      click_link 'Helpful Links'
      expect(page.body).to have_css('#helpful_links')
    end
  end
end


