class CuratedLinksController < ApplicationController
    def index
      @curated_links = CuratedLink.all
    end

    def new
    end

    def create
      @curated_link = CuratedLink.new(curated_link_params)
      @curated_link.save
      redirect_to curated_links_path
    end

    def destroy
      @curated_link = CuratedLink.find(params[:id])
      @curated_link.destroy

      redirect_to curated_links_path
    end

  private

      def curated_link_params
        params.require(:curated_link).permit(:link, :title, :description)
      end
end
