require 'rails_helper'

RSpec.describe CuratedLinksController, type: :controller do

  describe 'delete #destroy' do

    let(:curated_link) {create(:curated_link)}
    let(:delete_link) {delete :destroy, id: curated_link.id}

    it 'Deletes link from database' do
      curated_link
      expect { delete_link }.to change {CuratedLink.count}.by(-1)

    end

  end




end
