require 'rails_helper'

RSpec.feature "Learning objectives" do

  context 'page paths' do

    before :each do
      visit learning_objectives_path
    end

    it "shows learning objectives page" do

      expect(page.body).to have_css(".objectives")
    end

    it "shows a form with two inputs" do

      expect(page.body).to have_css('title_field')
      expect(page.body).to have_css('description_field')
    end

    it "clicks submit button and takes to new page" do

      click_button('submit')
      expect(page.body).to have_content('Success')
    end
  end

  context 'testing database' do

    it "shows a form with two inputs" do
      visit learning_objectives_path

      fill_in("Title", with:  "Jory's cheat sheet")
      fill_in("Description", with:  "capybara has a cool cheat sheet")
      click_link('submit')

      expect(page).to have_content("Jory's cheat sheet")
      expect(page).to have_content("capybara has a cool cheat sheet")
    end
  end
end

