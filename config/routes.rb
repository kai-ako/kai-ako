Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/learning_objectives' => 'site#learning_objectives'
  get "/view_objectives" => "site#view_objectives"
end
