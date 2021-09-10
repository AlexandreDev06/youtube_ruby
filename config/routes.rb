Rails.application.routes.draw do
  get "home/index"
  get "videos/index"
  get "categories/index"
  root "home#index"
  resources :videos
  resources :categories
end
