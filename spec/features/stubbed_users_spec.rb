require 'rails_helper'

RSpec.feature "StubbedUsers", type: :feature do
	context 'User is logged in by stubbing out oauth' do
		it "Clicking login link logs in user" do
			visit root_path
			mock_auth_hash
			click_on 'Log In with Github'
			expect(page).to have_content('Log Out')
		end
	end
end
