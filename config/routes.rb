Rails.application.routes.draw do
  resources :curated_links

  resources :cohort

  root 'site#index'

  get '/profile' => 'profile#show'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :learning_objectives do
    member do
      post :complete
    end
  end


  resources :emo_states
  namespace :api do
    resources :curated_links
  end
end
