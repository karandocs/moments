Rails.application.routes.draw do
  resources :crushes
  resources :search
  resources :wishes
  root to: 'moments#index'
  resources :moments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
