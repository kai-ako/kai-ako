class ProfileController < ApplicationController

 def show
   @token = session[:github_token]
 end

 def edit

 end

 def update
    flash.notice = "Profile has been updated"
    redirect_to root_path

 end
end
