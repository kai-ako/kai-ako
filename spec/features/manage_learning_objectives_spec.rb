require 'rails_helper'

RSpec.feature "Learning objectives" do

  context 'page paths' do

    before :each do
      visit learning_objectives_path
    end

    it "shows learning objectives page" do

      expect(page.body).to have_content("Things to learn!!")
    end

    it "shows a form with two inputs" do
      click_link("Add new objective")
      expect(page.body).to have_content('Title')
      expect(page.body).to have_content('Description')
    end

    it "clicks submit button and takes to new page" do
      click_link("Add new objective")
      click_button("commit")

      expect(page).to have_content('Success')
    end
  end

  context 'testing database' do

    it "displays a title and description from the database" do
      visit new_learning_objective_path

      fill_in("Title", with:  "Jory's cheat sheet")
      fill_in("Description", with:  "capybara has a cool cheat sheet")
      click_button('commit')

      expect(page).to have_content("Jory's cheat sheet")
      expect(page).to have_content("capybara has a cool cheat sheet")
    end
  end
end

