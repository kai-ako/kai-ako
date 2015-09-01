require 'rails_helper'

RSpec.feature "UpdateProfiles", type: :feature do

  describe 'Update Profile' do

    it 'Fills in the form' do
      visit (edit_profile_path)
      fill_in('first_name', :with => 'Kyle')
      fill_in('last_name', :with => 'Hammond')
      click_button('Save Changes')
      expect(page).to have_content('Profile has been updated')
    end

  end

end
