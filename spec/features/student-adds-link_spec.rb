require 'rails_helper'

feature 'Student can add Link' do
  context 'starting from homepage' do
    before do
      visit '/'
    end

    it 'has new link link' do
      expect(page.body).to have_content('Add new link')
    end
    it 'goes to new link form' do
      click_link 'Add new link'
      expect(page.body).to have_css('#new_link_form')
    end
  end

  context 'filling out new_link_form' do
    before do
      visit(new_link_path)
    end
    it 'fill in form fields and submit' do
      fill_in('Link', :with => 'http://google.com')
      fill_in('Title', :with => 'Link to Google')
      fill_in('Description', :with => 'This is a link to google')
      click_button 'Submit'
    end
  end
end
