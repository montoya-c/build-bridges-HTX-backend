Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :users, only: [:create ]

        resources :resources, only: [:create, :index, :destroy, :update]

        resources :categories, only: [:index, :show]

        resources :category_details, only: [:create, :update]

        resources :languages, only: [:index]

        post '/signup', to: 'users#create'
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
end
