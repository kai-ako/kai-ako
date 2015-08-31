class LinksController < ApplicationController
  def create
    Link.create(link_params)
    redirect_to root_path
  end

  private
  def link_params
    params.require(:link).permit(:url, :title, :description)
  end
end
