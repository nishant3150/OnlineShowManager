Rails.application.routes.draw do
  devise_for :users
  root :to => "users#index"
  resources :users
  resources :episodes, only: [:index]
  resources :seasons, only: [:index] do
    member do
      get 'purchase'
    end
  end
  resources :movies, only: [:index] do
    member do
      get 'purchase'
    end
  end
  resources :shows, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
