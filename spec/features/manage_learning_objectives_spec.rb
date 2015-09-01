require 'rails_helper'

RSpec.feature "Learning objectives" do

  before do
    visit learning_objectives_path
  end

  it "shows learning objectives page" do
    expect(page.body).to have_css(".objectives")
  end

  it "shows a form with two inputs" do
    fill_in("Title", with:  "Jory's cheat sheet")
    fill_in("Description", with:  "capybara has a cool cheat sheet")
    click_button('submit')

    expect(page).to have_content("Jory's cheat sheet")
    expect(page).to have_content("capybara has a cool cheat sheet")
  end

  it "clicks submit button and takes to new page" do
    click_button('submit')
    expect(page.body).to have_content('Success')
  end
end
