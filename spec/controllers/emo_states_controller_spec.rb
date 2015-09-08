require 'rails_helper'

RSpec.describe EmoStatesController, type: :controller do
  describe '#create' do
    let(:user) {create(:user)}

    before {sign_in user}

    it 'assigns current user to new state' do
      request.env["HTTP_REFERER"] = emo_states_path
      post :create, emo_state: attributes_for(:emo_state)
      expect(assigns(:emo_state).user).to eq(user)
    end
  end
end
