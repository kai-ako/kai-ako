require 'rails_helper'

  feature 'User can submit emotional state' do

    before do
      visit('/')
    end

    it 'user can see emotional state form' do
      expect(page).to have_css('div#emo-state')
    end

    it 'user can submit emotional state form' do
      within('#emo-state') do
        choose('emo_state_emotion_happy')
        click_button('Save Emo state')
      end
      expect(current_path).to eq('/')
    end




  end
