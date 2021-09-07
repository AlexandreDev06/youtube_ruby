Rails.application.routes.draw do
  get "home/index"
  get "videos/index"
  root "home#index"
  resources :videos
end
