Rails.application.routes.draw do
  root 'users#index'
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :posts, only: %i[edit update create destroy] do
    collection do
      post :confirm
    end
  end
end
