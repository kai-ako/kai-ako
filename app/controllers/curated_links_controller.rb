class CuratedLinksController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to curated_links_path
  end
end
