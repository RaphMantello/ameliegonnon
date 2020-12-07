Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :expositions
      resources :artworks

      root to: "users#index"
    end
  devise_for :users
  root to: 'pages#landing'
  get "pages/home", as: "home"
  get "pages/gallery", as: "gallery"

  resources :expositions do
    resources :artworks, only: [:new, :create]
  end
  resources :artworks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
