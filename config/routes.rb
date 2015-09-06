Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :learning_objectives
  post '/emo_state' => 'emo_state#create'
end
