Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     get 'sessions/new'
  #     get 'sessions/create'
  #     get 'sessions/destroy'
  #   end
  # end
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :locations
      resources :users
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
