Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, only: %i[create new show] do
    resources :bookmarks, only: %i[new create]
    resources :comments, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
end
