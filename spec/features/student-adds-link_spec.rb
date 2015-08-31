require 'rails_helper'

feature 'Student can add Link' do
  it 'from home page' do
    visit '/'
    expect(page.body).to have_content('Add new link')
  end
  it 'goes to new link form' do
  	visit '/'
  	click_link 'Add new link'
    expect(page.body).to have_css('#new_link_form')
  end
end
