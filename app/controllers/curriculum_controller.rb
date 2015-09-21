class CurriculumController < ApplicationController

	def index
	end

  def create
    @new_topic = Topic.create(curriculum_params)
    redirect_to curriculum_path
  end

  def destroy
  	x = Topic.find(params[:id])
  	x.destroy
  end

  private
  def curriculum_params
    params.require(:new_topic).permit(:name, :desription, :parent_id)
  end


end
