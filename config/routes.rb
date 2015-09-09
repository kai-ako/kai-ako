Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'
  get '/curriculum' => 'curriculum_tree#index'
  post '/curriculum/new' => 'curriculum_tree#create'
  delete '/curriculum/' => 'curriculum_tree#destroy'

  get '/curriculum/api' => 'curriculum_tree_api#index'
  post '/curriculum/api' => 'curriculum_tree_api#create'
  delete '/curriculum/api'=> 'curriculum_tree_api#destroy'

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
