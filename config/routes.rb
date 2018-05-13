Rails.application.routes.draw do
  root 'events#index'

  resources :events, only: [:show, :index]

  namespace :admin do
    resources :events do
      collection { put :sort }
    end
    resources :packages
  end
end
