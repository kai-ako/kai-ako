require 'rails_helper'

  feature 'User can submit emotional state' do

    before do
      visit('/')
    end

    it 'user can see link to the listof emotions' do
      expect(page).to have_css("a#emo_state_links", :text => 'See all')
    end

    it 'user can visit the emostate list page' do
      click_link 'See all'
      expect(current_url).to eq('index_emo_state_path')
    end

    # it 'user can submit emotional state form' do
    #   within('#emo-state') do
    #     choose('emo_state_emotion_happy')
    #     click_button('Save Emo state')
    #   end
    #   expect(current_path).to eq('/')
    # end




  end
