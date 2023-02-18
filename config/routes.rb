Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :game, only: [:index, :show]
  resources :board, only: [:index, :show, :destroy] do
    resources :pin, only: [:new, :create, :destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
