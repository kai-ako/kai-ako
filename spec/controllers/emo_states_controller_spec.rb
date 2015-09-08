require 'rails_helper'

RSpec.describe EmoStatesController, type: :controller do
  describe '#create' do
    let(:user) {create(:user)}

    before do
      request.env["HTTP_REFERER"] = emo_states_path
      sign_in user
      post :create, emo_state: attributes_for(:emo_state)
    end

    it 'assigns current user to new state' do
      expect(EmoState.last.user).to eq(user)
    end

    it 'redirects to back' do
      expect(response).to redirect_to(emo_states_path)
    end
  end
end
