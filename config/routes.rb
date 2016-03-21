Rails.application.routes.draw do
  root 'pages#home'

  resources :events, only: [:show, :index]
end
