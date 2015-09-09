require 'rails_helper'

RSpec.describe Api::CuratedLinksController, type: :controller do

	describe 'GET /api/curated_links' do
		let!(:curated_links) {create_list(:curated_link, 10) }
		it 'returns json of all curated_links' do
			get :index
			results = JSON.parse(response.body)
			expect(results.size).to eq(10)
			expect(results.first["id"]).to eq(curated_links.first.id)
		end
	end

	describe 'POST /api/curated_links' do
		let!(:attributes) {attributes_for(:curated_link)}
		let(:submit_post) {post :create, curated_link: attributes}

		it 'returns a 201' do
			submit_post
			expect(response.status).to eq(201)
		end
		it 'returns created object' do
			submit_post
			expect(JSON.parse(response.body)["link"]).to eq(attributes[:link])
		end
		it 'saves to database' do
			expect {
				submit_post
			}.to change {CuratedLink.count}
		end
	end

end
