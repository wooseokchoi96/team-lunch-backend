Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signup', to: 'auth#create'
      post '/login', to: 'auth#login'
    end
  end
end
