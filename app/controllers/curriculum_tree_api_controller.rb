class CurriculumTreeApiController < ApplicationController
  def index
    topics = Topic.all
    render json: topics
  end

  def create
    new_topic = Topic.create(curriculum_params)
    render json: new_topic, status: 201
  end

  def destroy
    Topic.find(params[:id]).destroy
    head 204
  end

  private
    def curriculum_params
      params.require(:topic).permit(:name, :description, :parent_id)
    end

end
