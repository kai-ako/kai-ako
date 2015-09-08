require 'rails_helper'

RSpec.feature "Learning objectives" do

  context 'page paths' do

    before :each do
      visit learning_objectives_path
    end

    it "shows learning objectives page" do
      expect(page.body).to have_content("Things to learn!!")
      expect(page.body).to have_content("Learnt!!")
    end

    it "shows a form with two inputs" do
      click_link("Add new objective")
      expect(page.body).to have_content('Title')
      expect(page.body).to have_content('Description')
    end

  end

  context 'testing database' do

    let(:fill_in_objective_form) do
      visit new_learning_objective_path
      fill_in("Title", with:  "Jory's cheat sheet")
      fill_in("Description", with:  "capybara has a cool cheat sheet")
      click_button('commit')
    end

    it "displays a title and description from the database" do
      fill_in_objective_form
      expect(page).to have_content("Jory's cheat sheet")
      expect(page).to have_content("capybara has a cool cheat sheet")
    end

    it "checks the done button" do
      fill_in_objective_form
      objective = LearningObjective.last
      within("#objective_#{objective.id}") do
        click_button 'Done'
      end
      within("div#learnt") do
        expect(page).to have_content("Jory's cheat sheet")
      end
    end
  end
end

