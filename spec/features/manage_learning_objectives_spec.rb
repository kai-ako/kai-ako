require 'rails_helper'

RSpec.feature "Learning objectives" do
  it "shows learning objectives page" do
    visit('/learning_objectives')
    expect(page.body).to have_css(".objectives")
  end

  #we need a form with 2 input fields

  it "shows a form with two inputs" do
    visit('/learning_objectives')
    fill_in("Title", with:  "Jory's cheat sheet")
    fill_in("Description", with:  "capybara has a cool cheat sheet")
    click_button('submit')

    expect(page).to have_content("Jory's cheat sheet")
    expect(page).to have_content("capybara has a cool cheat sheet")

  end

  it "clicks submit button and takes to new page" do
    visit('/learning_objectives')
    click_button('submit')
    expect(page.body).to have_content('Success')
  end

#I want to see form info on the view_objectives page
end
