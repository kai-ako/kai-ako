require 'rails_helper'

RSpec.describe LearningObjectivesController, type: :controller do

  describe 'GET #index' do

    it 'has a 200 status' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'index should render index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  xdescribe 'POST #complete' do

    xit 'redirects to learning_objectives_path' do
      post :complete
      # not sure of my tests here
      expect(response).to be(learning_objectives_path)
    end
  end

   # describe 'POST #create' do

   #  it 'redirects to learning_objectives_path' do
   #    post :create

   #    # Not sure of my tests here
   #  end
   # end

  # describe 'GET #new' do
  # end

  # describe 'GET #edit' do
  # end

  # describe 'GET #show' do
  # end

  # describe 'PATCH #update' do
  # end

  # describe 'PUT #update' do
  # end

  # describe 'DELETE #destroy' do
  # end
end

