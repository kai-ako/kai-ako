class ProfileController < ApplicationController

 def show
	 @token = session[:github_token]
	 @token ? @token : (redirect_to root_path)
 end
end
