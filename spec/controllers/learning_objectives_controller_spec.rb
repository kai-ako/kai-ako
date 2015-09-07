require 'rails_helper'

RSpec.describe LearningObjectivesController, type: :controller do
  describe "#complete" do
    let!(:learning_objective) {create(:learning_objective)}
    let(:complete) { post :complete, id: learning_objective.id }

    before { complete }
    it 'updates the models completed_at field' do
      expect(learning_objective.reload.completed_at).to_not be_nil
    end
    it 'redirects to the learning objectives index page' do
      expect(response).to redirect_to learning_objectives_path
    end

  end
end
