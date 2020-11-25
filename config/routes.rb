Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  get "pages/home", as: "home"
  get "pages/gallery", as: "gallery"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
