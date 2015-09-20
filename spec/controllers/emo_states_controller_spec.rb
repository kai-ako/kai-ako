require 'rails_helper'

RSpec.describe EmoStatesController, type: :controller do
  describe "#index " do
    let(:emo_states_factory) {create_list(:emo_state, 5)}
    let(:user) {create(:user)}
    let(:teacher) {create(:user, teacher?: "true" )}

    it "shows student only her emotions" do
      user.emo_states = emo_states_factory
      sign_in user
      get :index
      expect(assigns(:emo_states).count).to eq(5)
    end

    it "shows teacher the last emotion of all students" do
      sign_in teacher
      get :index
      expect(assigns(:emo_states).count).to eq(1)
    end

    it "returns http success for student" do
      user = create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end

    it "returns http success for teacher" do
      user = create(:user, teacher?: "true")
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end


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
