Rails.application.routes.draw do
  get 'secrets/show' => 'secrets#show'
  post  'session/destroy' => 'sessions#destroy'
  resources :sessions, only: [:new, :create, :index]

  root 'application#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
