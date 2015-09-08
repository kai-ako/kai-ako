class LearningObjectivesController < ApplicationController

  def new
    @objective = LearningObjective.new
  end

  def index
    @completed_objectives = LearningObjective.where("completed_at IS NOT NULL")
    @objectives = LearningObjective.where("completed_at IS NULL")
  end

  def create
    @objective = LearningObjective.create(objectives_params)
    redirect_to learning_objectives_path
  end

  def destroy

    @objective = LearningObjective.find(params[:id])
    @objective.destroy
    redirect_to learning_objectives_path
  end

  def complete
    @objective = LearningObjective.find(params[:id])
    @objective.update_attribute(:completed_at, Time.now)
    redirect_to learning_objectives_path
  end

  private

  def objectives_params
    params.require(:learning_objective).permit(:title, :description)
  end
end
