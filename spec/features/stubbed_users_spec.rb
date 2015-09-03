require 'rails_helper'

RSpec.feature "StubbedUsers", type: :feature do
	context 'User is not logged in' do
		it "visiting profile page redirects home" do
			visit profile_path
			expect(page).to have_content('KaiAko')
		end
	end

	context 'User is logged in by stubbing out oauth' do
		it "visiting profile page displays profile" do
			visit root_path
			click_on 'Log In with Github'
			expect(page).to have_content('Log Out')
		end
	end

end
