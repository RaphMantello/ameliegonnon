Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr/ do
    root to: 'pages#landing'
    get "pages/home", as: "home"
    get "pages/gallery", as: "gallery"

    resources :expositions do
      resources :artworks, only: [:new, :create]
    end
    resources :artworks, except: [:new, :create] do
    end
  end
end
