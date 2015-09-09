require 'rails_helper'

RSpec.describe CurriculumTreeApiController, type: :controller do


  describe 'GET /curriculum_tree' do
    it "returns JSON of all Curriculum Tree item" do
      get :index
      stuff = JSON.parse(response.body)
      expect(stuff.size).to eq(Topic.count)
    end
  end

  describe 'POST /curriculum_tree/new' do
    let!(:attributes) {attributes_for(:topic)}
    let(:submit_post) {post :create, topic: attributes}
    it 'returns a 201' do
     submit_post
     expect(response.status).to eq(201)
   end


    it "updates the database with a new topic" do
      submit_post
      expect(JSON.parse(response.body)["topic"]).to eq(attributes[:topic])
    end

    it "saves topic to database" do
      expect {
        submit_post
      }.to change {Topic.count}
    end
  end

  describe 'DELETE /curriculum_tree/:id' do
    let!(:create_topic) {create(:topic)}
    let(:submit_delete) {post :destroy, id: create_topic.id}

    it "removes an item from the database" do
      expect {
        submit_delete
      }.to change {Topic.count}

    end
  end

  describe 'UPDATE /curriculum_tree/:id' do


end
