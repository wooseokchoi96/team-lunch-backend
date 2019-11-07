Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'auth#create'
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      resources :conversations, only: [:index, :create]
      resources :messages, only: [:index, :create]
      mount ActionCable.server => '/cable'
    end
  end
end
