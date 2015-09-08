Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'
  get '/curriculum' => 'site#curriculum'
  post '/curriculum/new' => 'site#create'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :learning_objectives do
    member do
      post :complete
    end
  end
  resources :emo_states
end
