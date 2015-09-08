require 'rails_helper'

RSpec.describe Api::EmoStateControllerController, type: :controller do

  describe 'GET /api/emo_states' do
    let!(:emo_states) {create_list(:emo_state, 10) }
    it 'returns json of all emo_states' do
      get :index
      results = JSON.parse(response.body)
      expect(results.size).to eq(10)
      expect(results.first["id"]).to eq(emo_states.first.id)
    end
  end

  # describe 'POST /api/curated_links' do
  #   let!(:attributes) {attributes_for(:curated_link)}
  #   let(:submit_post) {post :create, curated_link: attributes}

  #   it 'returns a 201' do
  #     submit_post
  #     expect(response.status).to eq(201)
  #   end
  #   it 'returns created object' do
  #     submit_post
  #     expect(JSON.parse(response.body)["link"]).to eq(attributes[:link])
  #   end
  #   it 'saves to database' do
  #     expect {
  #       submit_post
  #     }.to change {CuratedLink.count}
  #   end
  # end
end
