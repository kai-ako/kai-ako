Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'
  get '/edit_profile' => 'profile#edit'
  post '/edit_profile' => 'profile#update'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
