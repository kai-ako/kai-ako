class LearningObjectivesController < ApplicationController

  def new
    @objective = LearningObjective.new
  end

  def index
    @objective = LearningObjective.all
  end

  def create
    @objective = LearningObjective.create(objectives_params)
    redirect_to learning_objectives_path
  end

  private

  def objectives_params
    params.require(:learning_objective).permit(:title, :description)
  end
end
