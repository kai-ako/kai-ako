class SessionsController < ApplicationController

  def new
    redirect_to '/auth/github'
  end

  def create
    user= User.find_or_create_from_omniauth(request.env['omniauth.auth'])

    if user
      session[:user_id] = user.id
      redirect_to profile_path
    else
      redirect_to root_url
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

end
