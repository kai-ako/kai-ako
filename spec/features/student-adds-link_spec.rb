require 'rails_helper'

feature 'Student can add Link' do
  it 'from home page' do
    visit '/'
    expect(page.body).to have_content('Add new link')
  end
end
