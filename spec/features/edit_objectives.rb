require 'rails_helper'

RSpec.feature "Learning objectives" do

  it "button should delete objective" do
    visit new_learning_objective_path

    fill_in("Title", with:  "Jory's cheat sheet")
    click_button('commit')

    click_button('delete')
    expect(page.body).to_not have_content("Jory's cheat sheet")

  end
end
