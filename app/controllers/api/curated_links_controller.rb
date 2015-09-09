class Api::CuratedLinksController < ApplicationController

	def index
		links = CuratedLink.all
		render json: links
	end

	def create
		link = CuratedLink.create(curated_link_params)
		render json: link, status: 201
	end

	private
	def curated_link_params
		params.require(:curated_link).permit(:link, :title, :description)
	end
end
