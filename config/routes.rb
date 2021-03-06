Shouter::Application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboards#show'
  end
  root to: "home#show", via: :get

  resource :dashboard, only: :show

  resources :users, only: :show
  resources :text_shouts, only: :create
  resources :photo_shouts, only: :create
  resources :shouts, only: :show

  namespace :api, defaults: {format: 'json'} do
    resource :dashboard, only: :show
    resources :users, only: :show
    resources :text_shouts, only: :create
    resources :photo_shouts, only: :create
  end

  post ":user_id/follow" => "following_relationships#create", as: :user_follow
end
