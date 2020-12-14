Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :expositions
    resources :artworks

    root to: "users#index"
  end

  devise_for :users

  scope '(:locale)', locale: /fr/ do
    root to: 'pages#landing'
    get "pages/home", as: "home"
    get "pages/gallery", as: "gallery"

    resources :expositions do
      resources :artworks, only: [:new, :create]
    end
    resources :artworks
  end
end
