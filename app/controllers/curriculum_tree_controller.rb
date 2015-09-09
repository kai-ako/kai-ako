class CurriculumTreeController < ApplicationController

  def index
  end

  def curriculum
  end

  def create
    @new_topic = Topic.create(curriculum_params)
    redirect_to curriculum_path
  end

  def destroy
    @object = Topic.find(params[:id])
    @object.destroy
    redirect_to curriculum_path
  end

  private
  def curriculum_params
    params.require(:new_topic).permit(:name, :desription, :parent_id)
  end

end
