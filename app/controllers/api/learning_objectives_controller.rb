class Api::LearningObjectivesController < ApplicationController

	def index
		objectives = LearningObjective.all
		render json: objectives
	end

	def create
		objective = LearningObjective.create(learning_objective_params)
		render json: objective, status: 201
	end

	private
	def learning_objective_params
		params.require(:learning_objective).permit(:title, :description)
	end
end