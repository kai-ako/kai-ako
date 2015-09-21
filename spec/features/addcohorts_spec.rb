require 'rails_helper'

RSpec.feature "Addcohorts" do

    let(:fill_in_new_cohort) do
			visit new_cohort_path
  		fill_in("Cohort name", with: "Kahu")
			fill_in("Start date", with: "21-09-2015")
			fill_in("End date", with: "22-09-2015")
      click_button("Save Cohort")
    end


	it 'fill in form and expect db to change' do
		fill_in_new_cohort

		expect(page).to have_content("Kahu")
	end

end
