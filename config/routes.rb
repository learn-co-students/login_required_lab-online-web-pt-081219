Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]
  post 'sessions/logout', to: 'sessions#destroy'

  resources :secrets, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
