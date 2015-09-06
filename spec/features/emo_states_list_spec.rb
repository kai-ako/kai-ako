require 'rails_helper'

  feature 'User can submit emotional state' do

    before do
      visit('/')
    end

    it 'user can see link to the listof emotions' do
      within('#emo-state') do
        expect(page).to have_content('See all')
      end
    end

    it 'user can visit the emostate list page' do
      within('#emo-state') do
        click_link 'See all'
      end
      expect(current_path).to eq(emo_states_path)
    end

  end
