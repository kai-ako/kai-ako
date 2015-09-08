require 'rails_helper'

  feature 'User can submit emotional state' do

    context "when logged in" do
      before do
        login
        visit root_path
      end

      it 'user can see emotional state form' do
        expect(page).to have_css('div#emo-state')
      end

      it 'user can submit emotional state form' do
        within('#emo-state') do
          choose('emo_state_emotion_happy')
          click_button('Submit')
        end
        expect(current_path).to eq('/')
      end
    end

    context "when not logged in" do
      before {visit root_path}
      it "can not see emo-state form" do
        expect(page).to_not have_css('#emo-state')
      end
    end
  end
