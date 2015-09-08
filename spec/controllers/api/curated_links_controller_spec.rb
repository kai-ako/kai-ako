require 'rails_helper'

RSpec.describe Api::CuratedLinksController, type: :controller do

	describe 'GET /api/curated_links' do
		let!(:curated_links) {create_list(:curated_links, 10)}
		it 'returns json of all curated_links' do
			get api_curated_links_path
			raise response.body.inspect
		end
	end

end
