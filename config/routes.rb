Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'
  get '/curriculum' => 'curriculum#index'
  post '/curriculum/new' => 'curriculum#create'
  post 'curiculum/delete' => 'curriculum#destroy'

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
