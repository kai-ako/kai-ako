require 'rails_helper'

RSpec.describe EmoStatesController, type: :controller do
  # describe "#index " do
  #   let(:emo_states) {create_list(:emo_state, 5)}
  #   let(:user) {create(:user)}
  #   let(:teacher) {create(:teacher)}

  #   before do
  #     request.env["HTTP_REFERER"] = emo_states_path
  #   end

  #   it "shows student only her emotions" do
  #     sign_in user
  #     get :index
  #     expect(assigns(:emo_states).size).to eq(5)
  #   end

  #   # it "shows teacher the last emotion of all students"
  #   #   # logged in as teacher
  #   #   get :index
  #   #   expect(assigns(:emo_states).emotion).to eq(:emo_states.last.emotion)
  #   # end
  # end


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
