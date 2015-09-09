require 'rails_helper'

RSpec.describe Api::LearningObjectivesController, type: :controller do

	describe 'GET api/learning_ojectives' do
		let!(:learning_objectives) {create_list(:learning_objective, 7)}

		it "returns json of all learning objectives" do
			get :index
			results = JSON.parse(response.body)
			expect(results.size).to eq(7)
			expect(results.first["id"]).to eq(learning_objectives.first.id)
		end
	end

	describe 'POST /api/learning_objectives' do
		let!(:attributes) {attributes_for(:learning_objective)}
		let(:submit_objective) {post :create, learning_objective: attributes}
		
		it 'returns a 201' do
			submit_objective
			expect(response.status).to eq(201)
		end

		it 'returns the new objective' do
			submit_objective
			expect(JSON.parse(response.body)["link"]).to eq(attributes[:objective])
		end
		it 'saves to database' do
			expect {
				submit_objective
			}.to change {LearningObjective.count}
		end
	end

	describe 'DELETE /api/learning_objectives' do
			let(:delete_objective) {delete :destroy, :learning_objective}
	end




end