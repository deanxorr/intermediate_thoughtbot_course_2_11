Shouter::Application.routes.draw do
  root to: "home#show", via: :get

  resource :dashboard, only: :show

  resources :users, only: :show
  resources :text_shouts, only: :create
  resources :photo_shouts, only: :create

  post ":user_id/follow" => "following_relationships#create", as: :user_follow
end
