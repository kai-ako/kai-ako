require 'rails_helper'

feature 'Student can add Link' do
  it 'from home page' do
    visit '/'
    expect(page.body).to have_content('Add new link')
  end
  it 'requires the url is a valid url' do
  end
  it 'requires the presence of title, url and description'
end
