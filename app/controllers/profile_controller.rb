class ProfileController < ApplicationController

 def show
   @token = session[:github_token]
 end
end
