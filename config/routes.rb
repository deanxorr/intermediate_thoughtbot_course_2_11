Shouter::Application.routes.draw do
  root to: "home#show", via: :get

  resource :dashboard, only: :show

  resources :text_shouts, only: :create
  resources :photo_shouts, only: :create
end
