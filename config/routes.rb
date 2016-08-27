Rails.application.routes.draw do
  devise_for :users
  root to: "experiments#index"

  resources :experiments do
    resources :cameras do
      resources :pics
    end
  end
  resources :pics
end
