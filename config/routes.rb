Rails.application.routes.draw do
  root 'site#index'

  get '/profile' => 'profile#show'

  get '/login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get "/view_profile" => "site#view_profile"

  resources :learning_objectives do
    member do
      post :complete
    end
  end
  resources :emo_states
end
