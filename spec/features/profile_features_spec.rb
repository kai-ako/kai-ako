
require 'rails_helper'
describe 'Profile page has username' do

  it "Sarah" do
    visit('/')

    click_link('Log In with Github')
    # click_link('Authorize')


    page.has_content?("Authorize")
  end
end
