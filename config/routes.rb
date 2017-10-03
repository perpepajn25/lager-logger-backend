Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index,:create]
        resources :logs, only: [:index, :create]
        resources :beers, only: [:index, :create, :show]
        post 'search', to: 'beers#search'
      end
    end

end
