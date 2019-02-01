Rails.application.routes.draw do
  devise_for :users
    root 'blogers#index'
  resources :blogers
end
