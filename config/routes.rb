Rails.application.routes.draw do
  devise_for :users
  root to: "pics#index"

  resources :pics
  resources :cameras
  resources :experiments
end
