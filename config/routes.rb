Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :paletes, only: [:index, :show]
      post 'users/:id/paletes', to: 'paletes#create'
      get 'users/:id/paletes', to: 'paletes#user_paletes'
    end
  end
end
